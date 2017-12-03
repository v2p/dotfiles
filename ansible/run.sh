#!/usr/bin/env bash

ansible-playbook -i inventory playbook.yml --ask-become-pass "$@"
