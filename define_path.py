import os

def get_sh_file_paths(directory):
    sh_file_paths = []
    for root, dirs, files in os.walk(directory):
        for file in files:
            if file.endswith(".sh"):
                rel_path = os.path.relpath(os.path.join(root, file), directory)
                # 将反斜杠替换为正斜杠
                rel_path = rel_path.replace("\\", "/")
                sh_file_paths.append(rel_path)
    return sh_file_paths

def write_to_config_sh(file_paths, output_file="config.sh"):
    # 移动SCRIPT_DIR的定义到函数内部
    SCRIPT_DIR = "/easytools"
    
    with open(output_file, "w", encoding="utf-8") as config_file:
        config_file.write("#!/bin/bash\n\n")
        config_file.write("# 切换到脚本所在目录\n")
        config_file.write('cd "$(dirname "${BASH_SOURCE[0]}")"\n\n')
        config_file.write('# 保存脚本所在目录的路径\n')
        config_file.write(f'SCRIPT_DIR="{SCRIPT_DIR}"\n\n')

        written_paths = set()  # 用于追踪已写入的脚本路径

        for path in file_paths:
            script_name = os.path.basename(path).split(".")[0]  # 获取脚本名，去除文件扩展名
            script_variable = f'{script_name.upper()}_SCRIPT_PATH="$SCRIPT_DIR/{path}"'
            
            # 只有在存在路径且未写入过的情况下才写入原始路径
            if path != "" and script_variable not in written_paths:
                config_file.write(f'{script_variable}\n')
                written_paths.add(script_variable)
                
        config_file.write("\n")
        config_file.write("# 其他配置...\n")
        config_file.write("\n")
        config_file.write("# 打印路径调试信息\n")

        # 将所有路径写一个打印调试信息并放在最后
        for path in file_paths:
            script_name = os.path.basename(path).split(".")[0]
            script_variable = f'{script_name.upper()}_SCRIPT_PATH: ${script_name.upper()}_SCRIPT_PATH'
            config_file.write(f'# echo "{script_variable}"\n') # 开发模式请将 '# echo' 前面的 '#' 号去掉

if __name__ == "__main__":
    easytools_directory = os.getcwd()  # 获取当前工作目录作为easytools项目的路径
    sh_file_paths = get_sh_file_paths(easytools_directory)

    if sh_file_paths:
        write_to_config_sh(sh_file_paths)
        print("路径已写入 config.sh 文件。")
    else:
        print("未找到任何 .sh 文件。")
