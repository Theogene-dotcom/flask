FROM python:3.12.4
WORKDIR /apps
COPY ./wowep ./
RUN pip install --upgrade pip --no-cache-dir
RUN pip install -r /wowep/requirements.txt --no-cache-dir
EXPOSE 8000
CMD ["python3","manage.py","runserver","0.0.0.0:8000"]
#CMD ["gunicorn", "--bind", "0.0.0.0:8000", "main_app.wsgi:application"]
