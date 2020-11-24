if $(which ansible &> /dev/null); then
	echo " >> Ansible OK"
else
	echo " ++ Installing ansible"
	sudo apt-get install ansible
fi

echo "Installing galaxy requirements"
ansible-galaxy collection install -r requirements.yml
ansible-galaxy role install -r requirements.yml
