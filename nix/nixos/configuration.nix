# nix-help

{ config, pkgs, ... }:

{
  imports =
    [ # include hardware configs
      ./hardware-configuration.nix
    ];

  # allow unfree packages
  nixpkgs.config.allowUnfree = true;
  # enable unstable packages
  # > sudo nix-channel --add https://channel.nixos.org/nixos-unstable nixos
  # > sudo nixos-rebuild switch --upgrade    
  # all system packages
  environment.systemPackages = with pkgs; [
    #$ editor
    nano
    libreoffice-fresh
    man
    man-pages
    #$ languages
    ## rust
    rustup
    ## erlang
    erlang
    rebar3
    elixir
    ## c and cpp
    libgcc
    gnumake
    gdb
    libclang
    libllvm
    lldb
    meson
    cmake
    extra-cmake-modules
    ## others manual
    ## deno rye
    #$ web
    curl
    git
    aria2
    nmap
    mihomo-party
    #$ utils
    mpv
    ffmpeg-full
    podman
    flatpak
    papirus-icon-theme
    gnome-tweaks
  ];

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.kands = {
    isNormalUser = true;
    description = "Kevin Stephen";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      #$ browser
      microsoft-edge
      #$ editor
      vscode
    ];
  };

  # use x11
  services.xserver.enable = true;
  services.xserver.excludePackages = with pkgs; [
    xterm
  ];
  services.xserver.videoDrivers = [ "admgpu" "ati" ];
  # enable 32-bit supoort for graphics
  hardware.graphics.enable32Bit = true;
  # enable the gnome desktop environment
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;
  environment.gnome.excludePackages = with pkgs; [
    snapshot # photo booth
    totem # video player
    yelp # help viewer
    seahorse # password manager
    gnome-tour
    gnome-maps
    gnome-weather
    gnome-shell-extensions
  ];
  # use standard keymap
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };
  # enable touch pad for laptop
  services.libinput.enable = true;
  # wayland xdg-portal enable
  xdg.portal.enable = true;
  # for solve some open issue
  # xdg.portal.xdgOpenUsePortal = true;
  # xdg portal config provider
  xdg.portal.configPackages = [
    pkgs.gnome-session
  ];

  # timezone
  time.timeZone = "Asia/Shanghai";
  # language settings
  i18n.defaultLocale = "en_US.UTF-8";
  i18n.supportedLocales = [
    "de_DE.UTF-8/UTF-8"
    "en_GB.UTF-8/UTF-8"
    "en_US.UTF-8/UTF-8"
    "ja_JP.UTF-8/UTF-8"
    "zh_CN.UTF-8/UTF-8"
    "zh_CN.GBK/GBK"
    "zh_HK.UTF-8/UTF-8"
    "zh_SG.UTF-8/UTF-8"
    "zh_TW.UTF-8/UTF-8"
  ];
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "zh_CN.UTF-8";
    LC_IDENTIFICATION = "zh_CN.UTF-8";
    LC_MEASUREMENT = "zh_CN.UTF-8";
    LC_MONETARY = "zh_CN.UTF-8";
    LC_NAME = "zh_CN.UTF-8";
    LC_NUMERIC = "zh_CN.UTF-8";
    LC_PAPER = "zh_CN.UTF-8";
    LC_TELEPHONE = "zh_CN.UTF-8";
    LC_TIME = "ja_JP.UTF-8";
  };
  i18n.inputMethod.enable = true;
  i18n.inputMethod.type = "fcitx5";
  i18n.inputMethod.fcitx5.addons = with pkgs; [
    fcitx5-anthy
    fcitx5-chinese-addons
  ];

  # hostname
  networking.hostName = "ksc-nix";
  #? enable wifi or other wireless WITHOUT networkmanager
  # networking.wireless.enable = true;
  #? wireless network can use "networking.wireless.networks" to config
  # some proxy config
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";
  # Enable networking
  networking.networkmanager.enable = true;
  # enable openssh
  services.openssh.enable = true;
  # enable dns support for openssh
  services.openssh.settings.UseDns = true;
  # enable X11 forwarding
  services.openssh.settings.X11Forwarding = true;
  
  # manually config ip address
  # networking.interfaces.eth0.ipv4.addresses = [ {
  #   address = "192.168.1.2";
  #   prefixLength = 24;
  # } ];
  # default gateway
  # networking.defaultGateway = "192.168.1.1";
  # nameservers
  networking.nameservers = [ "8.8.8.8" ];
  networking.networkmanager.insertNameservers = [
    "1.1.1.2"
    "1.0.0.2"
  ]; # also can use appendNameservers
  # enable ipv6
  networking.enableIPv6 = true;
  # ipv6 address
  # networking.interfaces.eth0.ipv6.addresses = [ {
  #   address = "fe00:aa:bb:cc::2";
  #   prefixLength = 64;
  # } ];
  # ipv6 gateway
  # networking.defaultGateway6 = {
  #   address = "fe00::1";
  #   interface = "enp0s3";
  # };

  # firewall configs
  networking.firewall.enable = true;
  # open ports
  networking.firewall.allowedTCPPorts = [
    5432 # postgresql
  ];
  # networking.firewall.allowedUDPPorts = [ ];

  # bootloader
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.kernelPackages = pkgs.linuxPackages_zen;
  #? rust patch (may work)
  # boot.kernelPatches = [
  #   {
  #     name = "Rust Support";
  #     patch = null;
  #     features = {
  #       rust = true;
  #     };
  #   }
  # ];

  # flatpak
  services.flatpak.enable = true;
  # postgresql
  services.postgresql.enable = true;
  services.postgresql.package = pkgs.postgresql;
  services.postgresql.enableJIT = true;
  # podman
  virtualisation.podman.enable = true;
  virtualisation.podman.dockerSocket.enable = true;
  virtualisation.podman.defaultNetwork.settings = {
    dns_enable = true;
  };
  virtualisation.podman.extraPackages = with pkgs; [
    gvisor
    podman-compose
  ];

  # enable cups for printing
  services.printing.enable = true;
  services.system-config-printer.enable = true;
  # printing drivers
  # services.printing.drivers = [ ];
  # enable sound with pipewire
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
    # no need this for now
    # media-session.enable = true;
  };

  # gnupg agent
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };

  # system version, DO NOT MODIFY
  system.stateVersion = "24.05";
}
