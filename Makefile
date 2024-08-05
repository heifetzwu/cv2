build:
	hugo 
build_en:
	hugo --config config_en.toml -d public_en
	cp ./public_en/index.html ./public/index_en.html
	#cp ./public_en/index.html ./static/assets/index_en.html

build_pub:
	hugo --config config_zh_pub.toml -d public_zh_pub
	#cp ./public_en/index.html ./public/index_en.html
	#cp ./public_en/index.html ./static/assets/index_en.html	
	
run:
	hugo -D server
run_en:
	hugo --config config_en.toml -D server
copy:
	cp ./public/index.html /home/jack/user/workspaces/gowebmvc2/resource/html/heifetzwu.github.io/
	cp ./public/index_en.html /home/jack/user/workspaces/gowebmvc2/resource/html/heifetzwu.github.io/