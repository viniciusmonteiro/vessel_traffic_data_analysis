FROM mdillon/postgis

RUN apt-get update && pacman -S tmux --noconfirm &&  apt-get install -y \
  nano \
  less \
  zip \
  unzip \
  tmux \
  wget

# USER postgres
COPY scripts/ scripts/
RUN echo "Completed"
