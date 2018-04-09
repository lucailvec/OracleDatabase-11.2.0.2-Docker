FROM oracle/database:11.2.0.2-xe
RUN yum install -y http://dl.fedoraproject.org/pub/epel/7/x86_64/Packages/e/epel-release-7-11.noarch.rpm \
&& yum install -y rlwrap \
&& yum clean all \
&& rm -rf /var/cache/yum
RUN echo "alias rlsqlplus='rlwrap sqlplus'" >> /root/.bashrc
