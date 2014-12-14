manage users
----

admin priv
-----
- add user to group:docker :
- [link](http://www.snip2code.com/Snippet/198806/Add-user-to-docker-group-to-avoid-sudo)

```bash
sudo groupadd docker
sudo gpasswd -a ${USER} docker
sudo {service,systemctl} docker restart

# User logout/login needed for group to apply
```
