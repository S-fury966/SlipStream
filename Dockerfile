FROM python:3.12-slim
COPY --from=docker:cli /usr/local/bin/docker /usr/local/bin/docker
WORKDIR /srv/slipstream
COPY app /srv/slipstream/app
COPY static /srv/slipstream/static
COPY sandbox /srv/slipstream/sandbox
COPY examples /srv/slipstream/examples
ENV PYTHONUNBUFFERED=1
EXPOSE 8080
CMD ["python", "-m", "app.server"]
