A super simple 1-way sync script for git repository.

The idea is to pull from one repo, and push to another.
The original use case is the syncrhonization of Overleaf with Github, in a automatic way.


# How to

Simply run `syncer.sh` by setting your environmental parameters and you are good to go.

# The docker way

If you want to achieve a (hopefully) better isolation (e.g. you may have untrusted sources), you may want to run it in a Docker container.

Edit `docker-compose.yaml` with your parameters, and `sudo docker compose run syncer -it`.
This will run the container in a interactive way, allowing you to accept host keys and (hopefully not) insert HTTP passwords.


