FROM python:3-alpine
WORKDIR /usr/src/app
RUN adduser -S rbpd
COPY . .
USER rbpd
EXPOSE 5832
CMD ["python", "./run-rbpd.py", "-l", "0"]

