# Self-hosted Minecraft Server
## Contents
 - [Overview](#overview) 
 - [Host server setup](#host-server-setup) 
 - [Starting, stopping, and monitoring the server](#starting-stopping-and-monitoring-the-server)
## Overview
This is a simple script to setup a self-hosted Minecraft server as a systemd daemon on your own Linux machine. However, this script was only tested on a Raspberry Pi. This is really just a way to keep my configurations backed up as I am just a casual Minecrafter in order to spend time with my kids. These scripts are really the work of several articles and help guides I found online. Here are the cited articles I used:

https://linuxconfig.org/ubuntu-22-04-minecraft-server-setup
https://unix.stackexchange.com/questions/302733/minecraft-server-startup-shutdown-with-systemd

I only modified it a bit; this script is (I'm sure you can tell if you look at the above articles and my script) largely not my work.

## Host server setup
1. You must download the Minecraft: Java Edition Server and configure your machine to run it. This will include installing the proper version of Java.
2. After you've downloaded the Minecraft Server JAR, copy it to the directory where this script is located.
3. Run the following in a Linux terminal in the directory where this script is located:
    ```sh
    ./setup_server.sh
    ```
4. The server should be started. Run the following command in a Linux terminal to ensure it is running:
    ```sh
    sudo systemctl status minecraft@survival
    ```
5. Proceed to the [Starting, stopping, and monitoring the server](#starting-stopping-and-monitoring-the-server) section of this README.


## Starting, stopping, and monitoring the server
- To **start** the server, use the following command:
    ```sh
    sudo systemctl start minecraft@survival
    ```
    > [!NOTE]  
    > If you ran the ``setup_server.sh`` script, you should already have the server started.      |
- To **stop** the server, use the following command:
    ```sh
    sudo systemctl stop minecraft@survival
    ```
- To **check the status** of the server, use the following command:
    ```sh
    sudo systemctl status minecraft@survival
    ```
- If you run into an issue and need to **view logs**, you can use the following command:
    ```sh
    journalctl -u minecraft@survival
    ```
- If you update the minecraft@.service file and save it to `/etc/systemd/system/`, you may need to run the following command:
    ```sh
    systemctl daemon-reload
    ```
