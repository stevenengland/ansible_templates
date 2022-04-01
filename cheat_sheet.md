# Scenarios

## Get IP of SSH connection / target host

```
- hosts: host1
  tasks:
  - name: Show host's ip
    debug:
      msg: "{{ ansible_ssh_host }}"
```

```
[hosts]
host1   ansible_host=1.2.3.4
```

```
    Result

TASK [Show host's ip] *********************************************************************************************************************************************************************************************
ok: [host1] => {
     "msg": "1.2.3.4"
}
```

# Commands

## pause

### Use pause for conditional prompts

```
tasks:
    - pause:
      prompt: "Which user shall be added? "
      when: ( ssl_cert_server_user__add_user_to_cert_group == 'y' )
      register: ssl_cert_server_user__user_to_add_to_cert_group
      no_log: false
```
