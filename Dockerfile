FROM python:alpine
RUN pip install awscli
COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
CMD ["awscli"]
