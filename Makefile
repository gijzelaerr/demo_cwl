env/bin/cwltool: venv/
	venv/bin/pip install -r requirements.txt

venv/:
	python3 -m venv venv

