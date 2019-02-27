hass:
	ansible-playbook --vault-password-file .vault-password hass.yml

decrypt:
	ansible-vault decrypt --vault-password-file .vault-password roles/ktz-hass/files/secrets.yaml

encrypt:
	ansible-vault encrypt --vault-password-file .vault-password roles/ktz-hass/files/secrets.yaml