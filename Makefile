run:
	pelican -t theme -s settings.py -o generated/updated_site content
	cp -R static-html/* generated/updated_site/
	cp -R static/* generated/updated_site/
	cp generated/updated_site/pages/* generated/updated_site/
	rm -rf generated/updated_site/pages/


update:
	python update_s3.py
	rm -rf generated/current_site
	cp -R generated/updated_site generated/current_site


wc:
	wc content/pages/*/* content/posts/*


init:
	pip install -r requirements.txt
