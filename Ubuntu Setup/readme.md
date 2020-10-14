# This playbook is for personal use, but if you like it, you can adapt it for your needs.<br>
# TODO list<br>
1. ~~**_Add tasks tags_**~~
2. ~~**_Generate qemu bridge conf in /etc/qemu/bridge.conf_**~~

## Test<br>
```
ansible-playbook ubuntu-setup.yml

PLAY [Ubuntu Initial Setup] ***********************************************************************************************************************************************************************************************************

TASK [Add Public Keys] ****************************************************************************************************************************************************************************************************************
ok: [localhost] => (item=https://packagecloud.io/AtomEditor/atom/gpgkey)
ok: [localhost] => (item=https://packages.riot.im/debian/riot-im-archive-keyring.gpg)
ok: [localhost] => (item=https://repo.yandex.ru/yandex-disk/YANDEX-DISK-KEY.GPG)
ok: [localhost] => (item=https://download.spotify.com/debian/pubkey_0D811D58.gpg)
ok: [localhost] => (item=https://download.teamviewer.com/download/linux/signature/TeamViewer2017.asc)
ok: [localhost] => (item=https://www.virtualbox.org/download/oracle_vbox_2016.asc)
ok: [localhost] => (item=https://deb.opera.com/archive.key)

TASK [Add Public Keys ID's] ***********************************************************************************************************************************************************************************************************
ok: [localhost] => (item=11E9DE8848F2B65222AA75B8D1820DB22A11534E)
ok: [localhost] => (item=379CE192D401AB61)

TASK [Add 3rd Party Sources] **********************************************************************************************************************************************************************************************************
ok: [localhost] => (item=deb https://packagecloud.io/AtomEditor/atom/any/ any main)
ok: [localhost] => (item=deb https://packages.riot.im/debian/ default main)
ok: [localhost] => (item=deb http://repo.yandex.ru/yandex-disk/deb/ stable main)
ok: [localhost] => (item=deb https://weechat.org/ubuntu focal main)
ok: [localhost] => (item=deb http://repository.spotify.com stable non-free)
ok: [localhost] => (item=deb http://linux.teamviewer.com/deb stable main)
ok: [localhost] => (item=deb [arch=amd64] https://download.virtualbox.org/virtualbox/debian eoan contrib)
ok: [localhost] => (item=deb https://deb.etcher.io stable etcher)
ok: [localhost] => (item=deb https://deb.opera.com/opera-stable/ stable non-free)

TASK [Add 3rd Party PPA's] ************************************************************************************************************************************************************************************************************
ok: [localhost] => (item=ppa:mkusb/ppa)
ok: [localhost] => (item=ppa:netext/netext73)
ok: [localhost] => (item=ppa:obsproject/obs-studio)
ok: [localhost] => (item=ppa:slytomcat/ppa)
ok: [localhost] => (item=ppa:timo-jyrinki/thunderbird78)
ok: [localhost] => (item=ppa:dieterbaum/qt-fsarchiver)

TASK [Upgrade all packages to latest version] *****************************************************************************************************************************************************************************************
ok: [localhost]

TASK [Install Development Tools] ******************************************************************************************************************************************************************************************************
ok: [localhost]

TASK [Clean Orphaned Packages] ********************************************************************************************************************************************************************************************************
ok: [localhost]

TASK [Install Base Packages] **********************************************************************************************************************************************************************************************************
ok: [localhost]

TASK [Install Server Packages] ********************************************************************************************************************************************************************************************************
ok: [localhost]

TASK [Install Desktop Packages] *******************************************************************************************************************************************************************************************************
ok: [localhost]

TASK [Install Virtualization Hypervisors] *********************************************************************************************************************************************************************************************
ok: [localhost]

TASK [Install Deb Packages] ***********************************************************************************************************************************************************************************************************
ok: [localhost] => (item=https://download.cdn.viber.com/cdn/desktop/Linux/viber.deb)
ok: [localhost] => (item=https://go.skype.com/skypeforlinux-64.deb)
ok: [localhost] => (item=https://releases.mattermost.com/desktop/4.5.4/mattermost-desktop-4.5.4-linux-amd64.deb)
ok: [localhost] => (item=https://github.com/yakyak/yakyak/releases/download/v1.5.9/yakyak-1.5.9-linux-amd64.deb)
ok: [localhost] => (item=https://github.com/sindresorhus/caprine/releases/download/v2.50.0/caprine_2.50.0_amd64.deb)

TASK [Uninstall Useless Desktop Packages] *********************************************************************************************************************************************************************************************
ok: [localhost]

TASK [Install oh-my-zsh] **************************************************************************************************************************************************************************************************************
ok: [localhost]

TASK [Create /usr/share/fonts/TTF directory needed for powerlevel10k fonts.] **********************************************************************************************************************************************************
ok: [localhost]

TASK [Install powerlevel10k fonts] ****************************************************************************************************************************************************************************************************
ok: [localhost] => (item=https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf)
ok: [localhost] => (item=https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf)
ok: [localhost] => (item=https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf)
ok: [localhost] => (item=https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf)

TASK [Update Font-Cache] **************************************************************************************************************************************************************************************************************
changed: [localhost]

TASK [Install powerlevel10k theme] ****************************************************************************************************************************************************************************************************
ok: [localhost]

TASK [Deploy zsh dotfiles] ************************************************************************************************************************************************************************************************************
ok: [localhost]

TASK [Change default shell to zsh for '['root', 'rosen']'] ****************************************************************************************************************************************************************************
ok: [localhost] => (item=root)
ok: [localhost] => (item=rosen)

TASK [Add user rosen to groups] *******************************************************************************************************************************************************************************************************
ok: [localhost]

PLAY RECAP ****************************************************************************************************************************************************************************************************************************
localhost                  : ok=21   changed=1    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   
