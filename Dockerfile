# load default image
FROM python:3.6

# add project
COPY ./web /app/
WORKDIR /app

# install flask
RUN pip install -r requirements.txt

# run test
RUN /bin/bash -c 'python test_flask.py'

# run flask
ENTRYPOINT ["python"]
CMD ["app.py"]
