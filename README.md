# Termux Superuser

Runs Android `su` with all **Termux binaries** included in **superuser mode** — which means you can run commands like `nano`, directly as system root.

> 🧩 **Rooted Android ONLY**

### Important Notice:

Hey everyone,

I originally created this repo when I was quite young, mainly for my own convenience. But since so many of you are now using it (which is awesome!), I’m restructuring and cleaning things up properly to make it more consistent and reliable.

For anyone who has **old forks**, please **discard old commits** when syncing — the old code is preserved in **`v1.0.0`**, but all new work will be structured differently going forward.

Thanks for your understanding and continued support ❤️

## Motive

Android’s built-in `su` environment is missing a few key binaries (like `nano`), and adding them manually isn’t persistent — every reboot resets things.

**Termux Superuser** bridges that gap: it runs Android `su` while using Termux’s own binaries, so you get full root access without redundant installs.

## Pre-Requisites

1. Update Termux to the latest version:

   ```bash
   apt update && apt upgrade -y
   ```

2. Install Git:

   ```bash
   pkg install git
   ```

3. Restart Termux. If prompted for superuser access any time, **grant it**.

## Instructions

1. Download the installer:

   ```bash
   wget https://github.com/cipherswami/termux-superuser/releases/download/v1.0/install_xsu.sh
   ```

2. Make it executable:

   ```bash
   chmod +x install-xsu.sh
   ```

3. Run the installer:

   ```bash
   ./install-xsu.sh
   ```

4. **et voilà!** Installation complete 🎉. Now, clean up:

   ```bash
   rm install-xsu.sh
   ```

## Usage

Run `xsu` anywhere in Termux to start Termux Superuser.

## Additional Info

- Installation creates a `bin` folder in `$HOME/.termux/`, which is automatically added to your `PATH`.
- You can drop any binaries or executables in there and call them from anywhere inside Termux.

## People

Author: Aravind Potluri <<aravindswami135@gmail.com>>

## LICENSE

[MIT © Aravind Potluri](./LICENSE)
