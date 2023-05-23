# 2023-05-23

Dunno, train failing 311clone ... old orig verison lacks documentation. Basically end in failed state.

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

See also the google drive saved model in the gh issue ... get it and do this

kitt/saves/models/encoders$ lr
total 4
lrwxrwxrwx 1 cottrell cottrell 81 May 23 12:19 classifier-transformer -> ../../6block100epoch/classifier-transformer_64_4d_max_exp_1_prod_2_random_inputs/

Still not working ... model is missing decoder.


On 3.11 (gpu avail) but fails on some float32 issue.

Will try to install tensorflow properly with cuda on conda kitt env.


conda install -c conda-forge cudatoolkit=11.8.0
python3 -m pip install nvidia-cudnn-cu11==8.6.0.163 tensorflow==2.12.*

See kitt/utils/save_load_models/load_kitt for how to load encoder decoder

    encoder = load_model(base_path / "encoders" / encoder_identifier)
    decoder = load_model(base_path / "decoders" / decoder_identifier)
    tokenizer = KernelTokenizer(get_unique_product_kernels(max_terms=max_products))
    return KITT(encoder, decoder, tokenizer, max_expression_length, min_expression_length)
