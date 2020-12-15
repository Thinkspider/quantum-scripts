#!/bin/bash
docker run --rm -i -v $1_web_data_user_files:/userfiles/ debian /bin/bash -c "rm -rf /userfiles/files/"
