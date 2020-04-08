Thank you for using my Docker image!

To get started, you first need to set up your Minecraft server directory on your host system as you normally would:

- Place the minecraft_server.jar OR spigot.jar somewhere on your host (and make sure they're named exactly that way).
- Accept the EULA by creating the eula.txt as described in the software or Minecraft Wiki

Then make sure your Minecraft directory on the host is accessible from the Docker container by running:

    chmod -R 777 /path/to/minecraft

If you don't want to give such broad permissions to your Minecraft server directory, 
you can instead assign it to a local user and group with

    chown -R user:group /path/to/minecraft (replacing with the desired local user and group)

And then pass the local user and local group ID to "docker run" with --user 1001:1001 (replacing with the desired IDs)

Now run the Docker container and replace script.sh with either minecraft.sh or spigot.sh
depending on whether you are using the official "vanilla" Minecraft or SpigotMC.

    docker run -d --restart always --name minecraft-server -p 25565:25565 --mount type=bind,src=/path/to/minecraft,target=/app/mount sindastra/mc-env ./script.sh
    
In both command examples, you will have to replace /path/to/minecraft with your actual server path (the directory with the .jar file)!

Note: By default 2G of RAM is assigned to Java, which can be overridden by the environment variable MCRAM, so you could for example tell docker that MCRAM should be 4G instead. You can pass this to docker run with --env MCRAM=4G to set it to 4G of RAM.

For generic server instructions you might want to check https://minecraft.gamepedia.com/Tutorials/Setting_up_a_server

###### "Minecraft" is a trademark of Mojang Synergies AB. This Docker image is not affiliated with Mojang Synergies AB.
