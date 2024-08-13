SOURCE_DIR = ./public
DEST_DIR = C:/workspace/pythonProject/pywebcv2/resource/cv2/
DEST_DIR_SAM = C:/workspace/pythonProject/pywebcv2-sam/pywebcv2/resource/cv2/

build:
	hugo 

build_en:
	hugo --config config_en.toml -d public_en
	powershell -Command "Copy-Item -Path './public_en/index.html' -Destination './public/index_en.html'  "
#	cp ./public_en/index.html ./public/index_en.html
#	cp ./public_en/index.html ./static/assets/index_en.html

#not use, use build (with default config)
build_pub:
	hugo --config config_zh_pub.toml -d public_zh_pub
#	cp ./public_en/index.html ./public/index_en.html
#	cp ./public_en/index.html ./static/assets/index_en.html	
	
run:
	hugo -D server

run_en:
	hugo --config config_en.toml -D server

copy:
	cp ./public/index.html /home/jack/user/workspaces/gowebmvc2/resource/html/heifetzwu.github.io/
	cp ./public/index_en.html /home/jack/user/workspaces/gowebmvc2/resource/html/heifetzwu.github.io/

copy_win:
	powershell -Command "Copy-Item -Path '$(SOURCE_DIR)' -Destination '$(DEST_DIR)' -Recurse -force"
	powershell -Command "Copy-Item -Path '$(SOURCE_DIR)' -Destination '$(DEST_DIR_SAM)' -Recurse -force"
#	Copy-Item  -Path ".\public\*" -Destination "C:\workspace\pythonProject\pywebcv2\resource\cv2\"  -Recurse -Force
#	cp -R .\public\* C:\workspace\pythonProject\pywebcv2\resource\cv2\
#	cp -R .\public\* C:\workspace\pythonProject\pywebcv2-sam\pywebcv2\resource\cv2\
#	copy /y .\public\* C:\workspace\pythonProject\pywebcv2\resource\cv2\
	

trash_test_for_win:
# cp -f .\public\* C:\workspace\pythonProject\pywebcv2\resource\cv2\
	copy /y .\public\* C:\workspace\pythonProject\pywebcv2\resource\cv2\
	copy /y .\public\* C:\workspace\pythonProject\pywebcv2\resource\cv2\

manual_for_win:
	cp -R .\public\* C:\workspace\pythonProject\pywebcv2\resource\cv2\
	cp -R .\public\* C:\workspace\pythonProject\pywebcv2-sam\pywebcv2\resource\cv2\

test:
	powershell -Command "Copy-Item -Path '$(SOURCE_DIR)' -Destination '$(DEST_DIR)' -Recurse"

.PHONY: copy_win