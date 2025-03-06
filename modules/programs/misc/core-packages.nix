# Edit this configuration file to define what should be installed on
# your system.

{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [

    #ckb-next
    #wpsoffice
    arandr
    #arc-theme
    avahi
    baobab
    bash-completion
    bat  
    bibata-cursors
    blueberry
    btop
    curl
    dex
    dmenu
    #dropbox
    duf
    edid-decode
    #etcher
    evince
    feh
    #filezilla
    flameshot
    font-manager
    fsearch
    #gimp
    git
    dconf-editor
    gnome-disk-utility
    #gnome.gvfs   # Enabled through NixOS options
    hblock
    hw-probe
    hwinfo
    #i3lock-fancy
    #inkscape
    #insync
    #inxi
    keepassxc
    #killall
    libgccjit
    llvmPackages_17.libcxxClang
    #lm_sensors  # Already declared in common.nix
    #lollypop
    lshw
    meld
    most
    neovim
    #neofetch
    #fastfetch  # Enabled through modules
    networkmanagerapplet
    nixos-generators

    # Image
    nomacs
    imv
    #variety   # Wallpaper selector

    # Video
    #vlc
    # mpv  # Enabled through module

    # Screen Recording
    #obs-studio
    #simplescreenrecorder  # Only works with x11, no wayland support atm

    numlockx
    #ookla-speedtest
    platinum-searcher
    #polybar
    qt6Packages.qtstyleplugin-kvantum
    #ripgrep
    scrot
    #spotify
    tree
    volumeicon
    wget
    xorg.xkill
    #zsh
    zsh-autosuggestions
    zsh-completions
    zsh-syntax-highlighting

    # Chess Toolkits
    #en-croissant

    
    # Terminals   
    #alacritty  # Activated through the modules
    #ghostty    
    #kitty    # Activated through the modules
    #starship
    #wezterm


    anki-bin
    #discord
    telegram-desktop
    qbittorrent-enhanced

    # Editors  
    zed-editor
    sublime4
    #vscode

    # Browsers
    google-chrome
    ungoogled-chromium
    widevine-cdm
    #firefox-devedition
    #vivaldi
    #vivaldi-ffmpeg-codecs

    
    brightnessctl

    # SDDM
    #sddm-astronaut

    # Anime & Manga Stuff
    #miru

    # Find username across all social netwrks
    sherlock

    pdfarranger  # pdf merging and splitting tool
    ventoy-full  # usb flasher

    nwg-look
    waytrogen # Fast wallpaper setter for wayland

    yt-dlp   # cli tool for downloading youtube videos

  ];

}
