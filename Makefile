install-ollama: set-models-dir
	# curl -fsSL https://ollama.com/install.sh | sh
	brew install ollama

install-open-webui:
	pip install open-webui

serve: ollama-serve open-webui-serve

ollama-serve:
	systemctl start ollama.service

ollama-stop:
	systemctl stop ollama.service

update-models:
	./ollama-update-models.sh
	ollama list

open-webui-serve:
	open-webui serve

open-webui-stop:
	pkill -f open-webui

set-models-dir:
	echo "export OLLAMA_MODELS=/Users/shared/ollama/models" >> ~/.zshrc