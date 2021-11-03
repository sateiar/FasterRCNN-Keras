FROM tensorflow/tensorflow:1.14.0
FROM keras/keras:2.0.3

RUN pip install sagemaker-containers

# Copies the training code inside the container
COPY train_frcnn.py /train_frcnn.py

# Defines train.py as script entrypoint
ENV SAGEMAKER_PROGRAM train_frcnn.py