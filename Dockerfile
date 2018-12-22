FROM abc3660170/mapnik:latest
RUN yum install http://yum.postgresql.org/9.5/redhat/rhel-7-x86_64/pgdg-redhat95-9.5-2.noarch.rpm -y
RUN yum install postgresql95-server postgresql95-contrib -y
RUN mkdir /home/pgdata
ENV PATH="/usr/pgsql-9.5/bin:$PATH"
ENV LD_LIBRARY_PATH="/usr/pgsql-9.5/lib"
ENV PGDATA="/home/pgdata"


