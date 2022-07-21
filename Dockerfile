FROM windev/webdev-base:US270103s

COPY CastaSanRa.ZIP ${WEBDEVConfiguration}comptes/ftp_webdev/

RUN set -ex \
	&& cd ${WEBDEVBinaries} \
	&& ${WEBDEVBinaries}WDInstalle /DOCKER/INSTALLEGO/CastaSanRa

# Création de la persistance
VOLUME ${WEBDEVConfiguration}comptes/Donnees/CastaSanRa/