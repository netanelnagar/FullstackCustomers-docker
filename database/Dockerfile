FROM mysql:8.0.37-debian


COPY ./sample_2.sql /docker-entrypoint-initdb.d
RUN chmod -R 775 /docker-entrypoint-initdb.d
