FROM gitpod/workspace-postgresql

RUN echo "listen_addresses='*'" | sudo tee -a /etc/postgresql/12/main/postgresql.conf

RUN echo "host    all             all              0.0.0.0/0                       md5" | sudo tee -a /etc/postgresql/12/main/pg_hba.conf