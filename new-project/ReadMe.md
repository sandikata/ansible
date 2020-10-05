Ansible Playbooks, Ansible Configuration, Ansible Inventory.

- ansible.cfg can be placed in same directory together with the playbooks, it
  will be automatically detected.
- hosts.ini must be invoked with -i parameter, example:
  `ansible-playbook playbook.yml -i hosts.ini`

* dry-run `ansible-playbook playbook.yml -i hosts.ini -C`
* If you need verbose output you have to add and -v parameter.

* Important!!! before running any of the playbooks please make sure which hosts
  or inventories are placed inside in hosts block, usually at the beggining of
  any playbook, and be aware of yaml syntax indentation! If you have some
  questions please contact me, rosen.a@getlinked.io or in Mattermost/Matrix
  Rosen Aleksandrov. Just to mention, i am still learning it, but it's better to
  ask me, if you're rockie in ansible.

Short description.

- devops, admins, and jenkins folders contains playbooks related to creating
  users with different privileges and a regular user just for jenkins.

* get-keys.yml a playbook for fetching ssh fingerprint from remote servers. (Not
  my own, it's downloaded from
  https://github.com/ipspace/NetOpsWorkshop/tree/master/tools/ssh-keys)
* add-to-file.yml a playbook for adding new lines to existing file.
* base-setup.yml a playbook for base setup on new servers (at the moment it can
  automatically detect type of Linux Distro, only RedHat/Debian based for now).
* centos7-base-packages.yml a playbook related to EOL RHEL7 based distros.
* delegate-to.yml a playbook for deploying different files/configs to specific
  servers.
* editor.yml a playbook for changing default editor variable \$EDITOR
* os-information.yml a playbook for gathering system information from remote
  servers.
* ping.yml a playbook focused on checking if all servers are alive.
* replace-all-with-new-pubkey.yml a playbook for replacing all the ssh keys with
  new one.
* replace-user-pubkey.yml a playbook for replacing ssh key for specified user
  only.
