FROM pretix/standalone:2026.1.1
USER root
RUN pip3 install git+https://github.com/kolaente/pretix-roboto-slab.git \
    pretix-dbevent
USER pretixuser
RUN cd /pretix/src && make production
