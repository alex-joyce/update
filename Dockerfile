# Code generated by protoc-gen-liquibase. DO NOT EDIT.
FROM liquibase/liquibase:4.26.0
COPY update.sh /entry.sh
RUN wget -P /liquibase/lib https://s3.amazonaws.com/redshift-downloads/drivers/jdbc/2.1.0.9/redshift-jdbc42-2.1.0.9.jar
RUN wget -P /liquibase/lib https://github.com/liquibase/liquibase-redshift/releases/download/v4.17.1/liquibase-redshift-4.17.1.jar
ENTRYPOINT ["/entry.sh"]
