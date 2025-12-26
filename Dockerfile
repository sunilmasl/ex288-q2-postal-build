FROM registry.ocp4.example.com:8443/rhscl/httpd-24-rhel7
Expose 8080
ARG coderepo=
COPY index.html /var/run/web/index.html
CMD cd /var/run/web && python -m SimpleHTTPServer 8080
