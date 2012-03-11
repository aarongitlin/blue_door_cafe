stage:
	git push staging staging:master
	git push origin staging:staging

deploy:
	git push prod prod:master
	git push origin prod:prod