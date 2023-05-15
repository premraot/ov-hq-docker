
FROM docker.io/openvino/ubuntu20_dev:2022.3.0

ENTRYPOINT ["python3","/opt/intel/openvino_2022.3.0.9038/samples/python/hello_query_device/hello_query_device.py"]
