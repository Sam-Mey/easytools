#!/bin/bash

server {
    listen 80;
    listen [::]:80;
    
    root /path/to/your/site/public; #你的站点文件路径 + /public
    index index.php;
    server_name 你设置的网站域名;
    
    location / {
        try_files $uri /index.php$is_args$args;
    }
    
    location ~ \.php$ {
        try_files $fastcgi_script_name =404;
        include fastcgi_params;
        fastcgi_index index.php;
        fastcgi_buffers 8 16k;
        fastcgi_buffer_size 32k;
        fastcgi_pass unix:/run/php/php-fpm.sock;
        fastcgi_param DOCUMENT_ROOT $realpath_root;
        fastcgi_param SCRIPT_FILENAME $realpath_root$fastcgi_script_name;
    }
}
