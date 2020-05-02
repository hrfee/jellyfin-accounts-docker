## jellyfin-accounts Docker
Part of [jellyfin-accounts](https://github.com/hrfee/jellyfin-accounts), available on [docker hub](https://hub.docker.com/r/hrfee/jellyfin-accounts).
```
hrfee@lab:~/jellyfin-accounts# sudo docker create \
                               --name "jf-accounts" \ # Whatever you want to name it
                               -p 8056:8056 \
                               -v /path/to/.jf-accounts:/data \ # Equivalent of ~/.jf-accounts
                               -v /path/to/jellyfin:/jf \ # Path to jellyfin config directory
                               -v /etc/localtime:/etc/localtime:ro \ # Makes sure time is correct
                               hrfee/jellyfin-accounts
```
To build from Dockerfile instead,

```
hrfee@lab:~$ git clone https://github.com/hrfee/jellyfin-accounts-docker.git
hrfee@lab:~$ cd jellyfin-accounts-docker
hrfee@lab:~/jellyfin-accounts-docker# sudo docker build -t jellyfin-accounts .
```
