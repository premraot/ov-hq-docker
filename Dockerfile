
FROM docker.io/openvino/ubuntu20_dev:2022.3.0

ENV DEVICE /dev/dri/renderD128

# Run the command to set DEVICE_GRP and add it as an environment variable
RUN DEVICE_GRP=$(ls -g $DEVICE | awk '{print $3}' | xargs getent group | awk -F: '{print $3}') \
    && export DEVICE_GRP="$DEVICE_GRP" \
    && echo "DEVICE_GRP=$DEVICE_GRP" >> /etc/environment


ENTRYPOINT ["python3","/opt/intel/openvino_2022.3.0.9038/samples/python/hello_query_device/hello_query_device.py"]
