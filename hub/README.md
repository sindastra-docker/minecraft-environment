Thank you for using my Docker image!

To get started, you first need to set up your Minecraft server directory on your host system as your normally would:

- Place the minecraft_server.jar OR spigot.jar somewhere on your host (and make sure they're named exactly that way).
- Accept the EULA by creating the eula.txt as described in the software or Minecraft Wiki

Then make sure the minecraft directory on the host is accessible from the Docker container by running:

    chmod -R 777 /path/to/minecraft

Now run the Docker container and replace script.sh with either minecraft.sh or spigot.sh
depending on whether you are using the official "vanilla" minecraft or SpigotMC.

docker run -d --restart always --name minecraft-server -p 25565:25565 --mount type=bind,src=/path/to/minecraft,target=/app/mount sindastra/mc-env ./script.sh
