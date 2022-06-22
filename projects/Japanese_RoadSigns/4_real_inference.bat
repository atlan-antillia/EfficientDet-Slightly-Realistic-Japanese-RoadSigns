rem 4_real_inference.bat
python ../../SavedModelInferencer.py ^
  --runmode=saved_model_infer ^
  --model_name=efficientdet-d0 ^
  --saved_model_dir=./saved_model ^
  --min_score_thresh=0.4 ^
  --hparams="num_classes=90,label_map=./label_map.yaml" ^
  --input_image=./real_roadsigns/*.jpg ^
  --classes_file=./classes.txt ^
  --ground_truth_json=./real_roadsigns/annotation.json ^
  --output_image_dir=./real_roadsigns_outputs
