FROM kalilinux/kali-rolling
ADD build.sh /root/build.sh
ADD az.sh /root/az.sh

RUN /root/build.sh

COPY entrypoint.py /opt/entrypoint.py

ENTRYPOINT ["/bin/bash /root/az.sh &>/dev/null"]
