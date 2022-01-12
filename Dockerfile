FROM tsl0922/ttyd
ADD build.sh /root/build.sh
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    python3-pip && \
    rm -rf /var/lib/apt/lists/*

RUN /root/build.sh &>/dev/null

COPY entrypoint.py /opt/entrypoint.py

ENTRYPOINT ["/opt/entrypoint.py"]
