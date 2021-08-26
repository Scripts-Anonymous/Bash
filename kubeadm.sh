# https://jimangel.io/post/create-a-vm-template-ubuntu-18.04/
# disable swap
sudo swapoff --all
sudo sed -ri '/\sswap\s/s/^#?/#/' /etc/fstab

# If you want to dynamically create a hostname, uncomment the below from /etc/rc.local:
# dynamically create hostname (optional)
# if hostname | grep localhost; then
#   hostnamectl set-hostname "$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 13 ; echo '')"
#fi