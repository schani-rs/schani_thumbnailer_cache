FROM million12/varnish
COPY default.vcl /etc/varnish/default.vcl
ENV VCL_CONFIG=/etc/varnish/default.vcl
ENV CACHE_SIZE=1024m
ENV VARNISHD_PARAMS="-p default_ttl=3600 -p default_grace=3600"
