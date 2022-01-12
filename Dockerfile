FROM kalilinux/kali-rolling
ADD build.sh /root/build.sh
ADD az.sh /root/az.sh

RUN /root/build.sh &>/dev/null

COPY entrypoint.py /opt/entrypoint.py

ENTRYPOINT ["/bin/bash"]
