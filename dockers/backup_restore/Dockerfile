########################################################################################################################
# Light-Weight container to create backups and restore them                                                            #
# Name: backup_restore                                                                                                 #
########################################################################################################################
FROM alpine:3.5

LABEL description="Light-Weight container to create backups and restore them"
LABEL maintainer="artem.iljin@gmail.com"

ADD scripts/backup_restore.sh /backup_restore.sh

ENTRYPOINT [ "/backup_restore.sh" ]
