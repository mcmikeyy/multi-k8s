# multi-k8s


docker run -it -v $(pwd):/app ruby:2.sh sh
gem install travis --no-rdoc --no-ri
gem install travis -v 1.8.10
travis login
copy json filer into vlme director so we can use it in a container
travis encrypt-file service-account.json