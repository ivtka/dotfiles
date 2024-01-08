# List all
default:
	just --list

# Install AUR helper
paru:
	#!/usr/bin/env bash
	[ -f /tmp/paru-bin ] &&  rm -rf /tmp/paru-bin

	git clone https://aur.archlinux.org/paru-bin.git /tmp/paru-bin
	cd /tmp/paru-bin && makepkg -si --noconfirm

core: paru base fonts media

# Base packages
base:
	# manpages
	paru -S man-pages man-db --noconfirm --needed

	# sound
	paru -S pipewire-alsa pipewire-pulse wireplumber alsa-utils alsa-firmware --noconfirm --needed

	# xdg
	paru -S xdg-utils xdg-user-dirs xdg-user-dirs-gtk --noconfirm --needed

	# compressions
	paru -S zip unzip --noconfirm --needed

	# utils
	paru -S nano zsync rsync less dialog curl tracker bash-completion --noconfirm --needed

	# network 
	paru -S networkmanager bluez --noconfirm --needed

# Configure fonts
fonts:
	paru -S ttf-dejavu noto-fonts-cjk noto-fonts-emoji ttf-nerd-fonts-symbols \
		ttf-meslo-nerd gnu-free-fonts ttf-liberation cantarell-fonts --noconfirm --needed

# Configure media
media:
	paru -S ffmpeg gst-plugins-{bad,base,good,ugly} gstreamer-vaapi gst-plugin-pipewire gst-libav --noconfirm --needed

# Install needed packages for pinters
printers:
	paru -S cups system-config-printer cups-pk-helper --noconfirm --needed

# Configure nvidia
nvidia:
	paru -S nvidia --noconfirm --needed

# Install dev packages
dev:
	# Languages
	sudo pacman -S go rust python nodejs npm pnpm --noconfirm --needed

	# CLIs
	sudo pacman -S helix bat eza starship zoxide zellij --noconfirm --needed

	# VSCode
	paru -S visual-studio-code-bin --noconfirm --needed

	# Upgrade tool
	paru -S topgrade-bin --needed --noconfirm

	# LSps
	sudo pacman -S typescript-language-server rust-analyzer --noconfirm --needed

	# Containers
	sudo pacman -S docker podman kubectl --noconfirm --needed

	sudo pacman -S dua-cli tailspin bandwhich --noconfirm --needed

	sudo pacman -S trash-cli nnn felix ripgrep wl-clipboard lazygit --noconfirm --needed 

# Configure docker
docker:
	sudo pacman -S docker --noconfirm --needed
	sudo systemctl enable --now docker
	sudo usermod -aG docker $USER

	sudo pacman -S docker-compose --noconfirm --needed

# Laptop utils
laptop:
	paru -S power-profiles-daemon switcheroo-control --noconfirm --needed

# Configure GNOME DE
configure-gnome:	
	sudo pacman -S webp-pixbuf-loader --noconfirm --needed
	sudo pacman -S ffmpegthumbnailer --noconfirm --needed

	sudo pacman -S geary --noconfirm --needed

	gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click true
	gsettings set org.gnome.desktop.peripherals.touchpad disable-while-typing true

	xdg-mime default org.gnome.Nautilus.desktop inode/directory

	sudo pacman -S gpsd --noconfirm --needed
	sudo systemctl enable gpsd

	# Remove packages
	sudo pacman -Rns totem
