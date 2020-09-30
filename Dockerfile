FROM geerlingguy/docker-ubi8-ansible:latest
RUN mkdir /etc/ansible/config/
COPY config/ansible.cfg config/password_file.sh config/process-vault.sh /etc/ansible/config/
ENV ANSIBLE_CONFIG /etc/ansible/config/ansible.cfg
CMD ["sh","/etc/ansible/config/process-vault.sh"]
