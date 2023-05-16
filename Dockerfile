FROM python:3

RUN pip install -Iv markupsafe==2.0.1
RUN pip install -Iv pyyaml==5.3.1
RUN pip install -Iv jinja2==3.0.3
COPY ./ /generatedocs

ENTRYPOINT ["python", "/generatedocs/src/main.py"]
