cat requirements_cuda10.txt | xargs -n 1 -L 1 pip install

cd ../lib/models/research && protoc object_detection/protos/*.proto --python_out=. && python3 -m pip install .
