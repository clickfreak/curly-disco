#!/bin/bash

[[ -z "$VS_API_KEY" ]] && {
    echo "Please set Vscale API token via VS_API_KEY env variable"
	echo "export VS_API_KEY=<your token>"
    exit 1
}
ansible-playbook site.yml -i hosts $@
