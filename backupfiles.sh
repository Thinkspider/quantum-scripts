#!/bin/bash
docker run --rm -i -v $1_web_data_media_files:/media/ -v $1_web_data_user_files:/userfiles/ -v $1_web_root_home:/root -v /app/backup/:/backup debian /bin/bash -c "tar -cf /backup/$1/$1_web_data_media_files_$(date +\%Y-\%m-\%d-\%H.\%M.\%S).tar /media  && tar -cf /backup/$1/$1_web_data_user_files_$(date +\%Y-\%m-\%d-\%H.\%M.\%S).tar /userfiles  && tar -cf /backup/$1/$1_web_root_home_$(date +\%Y-\%m-\%d-\%H.\%M.\%S).tar /root"