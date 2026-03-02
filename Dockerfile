FROM pretix/standalone:2026.2.0
USER root
RUN pip3 install git+https://github.com/kolaente/pretix-roboto-slab.git \
    pretix-dbevent
USER pretixuser
RUN cd /pretix/src && make production
