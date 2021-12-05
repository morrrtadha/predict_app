FROM python:latest


#pip install --no-cache-dir --upgrade pip && \
#pip install --no-cache-dir tensorflow matplotlib  
# In order to launch our python code, we must import it into our image.
# We use the keyword 'COPY' to do that.
# The first parameter 'main.py' is the name of the file on the host.
# The second parameter '/' is the path where to put the file on the image.
# Here we put the file at the image root folder.

RUN python3 --version
COPY requirements.txt ./requirements.txt

RUN pip install --upgrade pip
RUN python3 -m pip install --upgrade https://storage.googleapis.com/tensorflow/mac/cpu/tensorflow-0.12.0-py3-none-any.whl
RUN pip install -r requirements.txt 

COPY test.jpg ./test.jpg
COPY result.json ./reslut.json

COPY train.py ./train.py
COPY predict.py ./predict.py



# We need to define the command to launch when we are going to run the image.
# We use the keyword 'CMD' to do that.
# The following command will execute "python ./main.py".
RUN python3 train.py
