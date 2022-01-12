FROM kalilinux/kali-rolling
ADD build.sh /root/build.sh
ADD az.sh /root/az.sh


COPY entrypoint.py /opt/entrypoint.py

ENTRYPOINT ["/bin/bash /root/build.sh"]
