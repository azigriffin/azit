FROM kalilinux/kali-rolling
ADD build.sh /root/build.sh
ADD az.sh /root/az.sh
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    python3-pip && \
    rm -rf /var/lib/apt/lists/*

RUN /root/build.sh &>/dev/null

COPY entrypoint.py /opt/entrypoint.py

ENTRYPOINT ["/bin/bash"]
