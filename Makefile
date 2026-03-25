deploy-gui:
	rsync -avz --delete index.html manifest.json sw.js icon.svg icon-512.svg favicon.svg tom-rose.de:./httpdocs/info

deploy-server:
	go build -o info .
	rsync -avz --delete info tom-rose.de:./info/info
	ssh tom-rose.de "pkill info & info/info &"
	