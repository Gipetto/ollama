install-ollama:
	curl -fsSL https://ollama.com/install.sh | sh

install-open-webui:
	pip install open-webui

serve: ollama-serve open-webui-serve

ollama-serve:
	systemctl start ollama.service

ollama-stop:
	systemctl stop ollama.service

ollama-update-models:
	./ollama-update-models.sh
	ollama list

open-webui-serve:
	open-webui serve

open-webui-stop:
	pkill -f open-webui
