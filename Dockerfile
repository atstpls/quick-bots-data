FROM splunk/splunk:latest 

COPY ./apps /opt/splunk/
RUN $SPLUNK_HOME/bin/splunk add user cabanaboy -password cabanaboypassword -role ctf_answers_service -auth admin:h3lloW@rld \
#     && $SPLUNK_HOME/bin/splunk edit user admin -role ctf_admin -auth admin:h3lloW@rld   \
#     && $SPLUNK_HOME/bin/splunk edit user admin -role can_delete -auth admin:h3lloW@rld   \
#     && mkdir -p /opt/splunk/var/log/scoreboard 

#EXPOSE 8000

#ENTRYPOINT ["/sbin/entrypoint.sh"]

#CMD ["start"]
