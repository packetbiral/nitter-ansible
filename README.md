# nitter-ansible
Ansible playbook to install nitter

## Requirements
- Latest stable version of Ansible (this was tested with Ansible 2.10.7)
- A Ubuntu 20.04 LTS server with a public IP
- A (sub)-domain name for Nitter with a valid A record with aforementioned IP

## How To Use

- Copy group_vars/all.sample to group_vars/all and edit the following variables:
  - NITTER_DOMAIN - your Nitter domain [MANDATORY]
  - NITTER_PORT - the port you want Nitter to run on, you can leave this on 8080 if you are unsure
  - NITTER_HMAC - you can generate a value for this on your Ansible host with pwgen -s 24 1
  - ACME_ACCOUNT_EMAIL - for SSL certificate expiry notices from LE if renewal fails
- Make a Ansible hosts file that looks like this:
```
[nitter]
nitter.example.com
```
- Run the playbook with `ansible-playbook -i hosts site.yml`
