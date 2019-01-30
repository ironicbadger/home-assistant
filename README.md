# ktz-hass

This repository contains all configuration used to configure my home automation setup using Home Assistant. This is a living and breathing repository and as such is subject to change.

Feel free to recycle the code here. Check [blog.ktz.me](https://blog.ktz.me) for some of the projects I'm doing with this stuff like cheap smart LEDs, automated routines and more...

I use Ansible to manage the configuration installation onto a remote host. `ansible-vault` is used for secret encryption. To view the secrets use `ansible-vault view secrets.yaml` and then enter the password. To create your own secrets create your own `secrets.yaml` file and then use `ansible-vault encrypt secrets.yaml`. More information about ansible-vault is available [here](https://docs.ansible.com/ansible/2.4/vault.html#encrypting-unencrypted-files).

## Running Ansible

I use a Makefile so that I don't have to remember long, complex Ansible commands. Ok, this one isn't very long or complex but there you are. To execute the Ansible ensure the entry in your `hosts` file is correctly pointing at your target system running HASS, double check your file paths are correct. Then run:

    make hass

That should be it. You'll need Ansible installed of course and a working SSH setup.