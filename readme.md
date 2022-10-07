git init
git commit --allow-empty -m init
hugo new site . --force
git remote add hugo-devresume-theme https://github.com/cowboysmall-tools/hugo-devresume-theme.git

git subtree add -P themes/hugo-devresume-theme hugo-devresume-theme master
#prepare config.toml
cp ../testsite/config.toml .

hugo serve -D
curl http://localhost:1313/

hugo


#test
mkdir -p assets/images
cp ../testsite/assets/images/jack1.jpg  assets/images/
#testfail


mkdir -p static/assets/images
cp ../testsite/static/assets/images/jack1.jpg  static/assets/images/
