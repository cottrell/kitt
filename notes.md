# 2023-05-22

conda create -n kitt python=3.7
poetry env use python3.7
poetry install
conda env kitt

NOTE: there is a chance this might all work on new python 3.11.0 ... still trying.

You need to run generate_dataset then copy in the saves posted here https://github.com/frgsimpson/kitt/issues/1

I think from kitt.prototype.evaluate_classifier import infer_top_n_expressions
is likely what you want in the end.

See ./kitt/prototype/scripts/experiments/linear_kernel_comparison.py ...
