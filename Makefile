.PHONY: repl

help:
	@echo
	@echo "======================================================================"
	@echo
	@echo "🚀  MAIN"
	@echo
	@echo "run:       run app"
	@echo "repl:      start REPL"
	@echo
	@echo "📦 DEPENDENCIES"
	@echo
	@echo "env:        show environment info"
	@echo "deps:       list prod dependencies"
	@echo
	@echo "======================================================================"
	@echo

#
# 🚀  MAIN
#

run:
	poetry run python app.py

repl:
	poetry run ipython

#
# 📦 DEPENDENCIES
#

env:
	poetry run poetry env info

deps:
	poetry run poetry show --tree --only main
