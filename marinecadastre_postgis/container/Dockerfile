FROM mdillon/postgis

RUN apt-get update && apt-get install -y \
  nano \
  less \
  zip \
  unzip \
  wget

# USER postgres
COPY scripts/ scripts/
RUN echo "Completed"