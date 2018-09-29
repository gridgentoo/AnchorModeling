#!/bin/sh
echo ""
echo "IF YOU GOT ERRORS, INSTALL ANSIBLE:"
echo ""
echo "sudo apt-add-repository -y ppa:ansible/ansible && sudo apt-get -y update && sudo apt-get -y install ansible"
echo ""
for i in $(find . -name "v$1*.yml" | sort); do echo "~~~~~ $i ~~~~~"; echo; ansible-playbook "$i" -vvvv || exit 255; done # --ask-sudo-pass; done
