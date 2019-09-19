FROM mdillon/postgis

RUN apt-get update && apt-get install -y \
  nano \
  less \
  zip \
  unzip \
  tmux \
  wget

# USER postgres
COPY scripts/ scripts/
RUN echo "Completed"
