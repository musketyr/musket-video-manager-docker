FROM java:8-jre
MAINTAINER Vladimir Orany <vladimir@orany.cz>

ENV MULTISHARE_DOWNLOADER_DOWNLOADS_FOLDER  /opt/downloads
RUN mkdir -p "$MULTISHARE_DOWNLOADER_DOWNLOADS_FOLDER"

ENV MULTISHARE_DOWNLOADER_HOME /usr/local/multishare-downloader
ENV PATH $MULTISHARE_DOWNLOADER_HOME/bin:$PATH
RUN mkdir -p "$MULTISHARE_DOWNLOADER_HOME"
WORKDIR $MULTISHARE_DOWNLOADER_HOME

ENV MULTISHARE_DOWNLOADER_VERSION 0.0.3
ENV MULTISHARE_DOWNLOADER_URL https://github.com/musketyr/musket-video-manager/releases/download/$MULTISHARE_DOWNLOADER_VERSION/multishare-downloader.tar.gz

RUN  set -x \
  && curl -fSL "$MULTISHARE_DOWNLOADER_URL" -o multishare-downloader.tar.gz \
  && tar -xvf multishare-downloader.tar.gz --strip-components=1 \
  && rm multishare-downloader.tar.gz
