# Use the official PostgreSQL image as a base
FROM postgres:latest

# Set environment variables for the PostgreSQL service
ENV POSTGRES_DB=sustainable_bonds_db
ENV POSTGRES_PASSWORD=sustainable

# Copy initialization scripts if you have any. They will be executed on container startup.
COPY ./bonds-db-initscript.sql /docker-entrypoint-initdb.d/

# Expose the PostgreSQL port
EXPOSE 5432