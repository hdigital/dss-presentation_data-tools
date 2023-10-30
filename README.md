# A Jupyter starter project · 🚀📊
Add a Zenodo API to an `.env` file to access [Zenodo REST API](https://developers.zenodo.org/) — see [`.env.example`](.env.example)

---

## Installation · ⚙️

### Local · 💻

Run in [VS Code](https://code.visualstudio.com/docs/datascience/jupyter-notebooks) or with [JupyterLab](https://jupyterlab.readthedocs.io/en/latest/).

```sh
python -m venv .venv
source .venv/bin/activate
python -m pip install -r requirements.txt

python -m jupyter lab
```

### Codespace · 🛰️

Run in [GitHub Codespaces](https://docs.github.com/en/codespaces/overview).

See `init-codespace.sh` and `devcontainer.json`

## How to · 🤔

Run and clean all Jupyter notebooks in current folder.

```sh
jupyter nbconvert --execute --inplace *.ipynb ; nbdev_clean --fname .
```

Render notebooks with Quarto

```sh
quarto render quarto.qmd ;
quarto render jupyter-quarto.ipynb
```

---

Clean a Jupyter notebook with [nbdev_clean](https://nbdev.fast.ai/tutorials/git_friendly_jupyter.html)

```sh
nbdev_clean --fname .
```

Format Python and Jupyter files with [black](https://black.readthedocs.io/en/stable/usage_and_configuration/the_basics.html)

```sh
black .
```

Run [pre-commit](https://pre-commit.com/#usage) hooks on all files

```sh
pre-commit run --all-files

# pre-commit autoupdate
```

## Open issues · ❓

- _nbdev_clean_ hook not reformating notebooks
- Quarto VS Code extension _Render_ button needs restart of Terminal after codespace creation

## License · ⚖️

[MIT](https://choosealicense.com/licenses/mit/) – Copyright (c) 2023 Holger Döring
