FROM ubi8/python-36

RUN pip3 install flask

ADD app.py /

ENV FLASK_APP /app.py
ENV FLASK_ENV development

EXPOSE 5000

CMD flask run --host=0.0.0.0
