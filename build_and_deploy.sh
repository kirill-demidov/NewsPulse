#!/bin/bash
python freeze.py
cd docs
touch .nojekyll  # Предотвращает обработку Jekyll'ом 