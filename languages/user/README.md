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

- [parent](https://github.com/brownman/docker-images/commit/6469087c907cbc5f0afe0d3e08a08f77a15137a5)
