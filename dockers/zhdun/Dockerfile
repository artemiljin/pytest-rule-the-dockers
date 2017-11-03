########################################################################################################################
# Light-Weight container with dockerize go utility inside                                                              #
# Name: zhdun                                                                                                          #
########################################################################################################################
FROM alpine:3.5

LABEL description="Light-Weight container with dockerize go utility inside"
LABEL maintainer="artem.iljin@gmail.com"

ENV DOCKERIZE_VERSION v0.3.0

ADD resources/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz /usr/local/bin

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]

CMD ["--help"]
