FROM public.ecr.aws/lambda/python:3.6

COPY src/*.py ./
COPY requirements.txt ./

RUN pip install -r requirements.txt

CMD [ "ses.handler" ]
