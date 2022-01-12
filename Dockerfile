FROM tsl0922/ttyd

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    python3-pip && \
    rm -rf /var/lib/apt/lists/*

RUN build.sh

COPY entrypoint.py /opt/entrypoint.py

ENTRYPOINT ["/opt/entrypoint.py"]
