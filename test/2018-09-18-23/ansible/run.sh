#!/bin/sh
echo ""
echo "IF YOU GOT ERRORS, INSTALL ANSIBLE:"
echo ""
echo "sudo apt-add-repository ppa:ansible/ansible"
echo ""
echo "sudo apt-get update"
echo ""
echo "sudo apt-get install ansible"
echo ""
for i in $(find . -name "v$1*.yml" | sort); do echo "~~~~~ $i ~~~~~"; echo; ansible-playbook "$i" -vvvv || exit 255; done # --ask-sudo-pass; done
