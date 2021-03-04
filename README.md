## Execute X11 (graphical application) via wsl

1. Make sure you have the wsl to install and X11 activate in /etc/ssh/sshd_config
2. Install Xming (https://sourceforge.net/projects/xming/) and run it
3. `https://github.com/leomarcel/wslX11` at the user's root (C:\Users\YourUsername)
4. open a cmd, `cd wslX11` and execute the command `wslx`.


**Explanation :**
The IP address of the WSL being allocated dynamically, the script `wslx.bat` executes, via the wsl, the file `ipinfo.bash` which is responsible for retrieving the IP address of the WSL. It is then copied into an `ip` file. Once the IP is retrieved and assigned in a variable, the `wslx.bat` configures an environment variable `DISPLAY=localhost:0.0` in order to specify to the WSL the location of the graphics server. Then starts an SSH session on the WSL with the necessary parameters for graphic use.

![wslX11](https://raw.githubusercontent.com/leomarcel/wslX11/main/raw.png)