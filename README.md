# nixos-config

System packages:
- set boot loader 
- set kernel version
- define users
- set timezone
- set graphics drivers
- they are imported to configuration.nix

User are independant for every user so:
- install apps
- setting themeing
- git settgins
- shells
- configuration for apps


Idea for managing programing enviroments:
put a flake.nix into projects with all dev deps, and use direnv to source it every
time you cd into.

TODO 
[] configure rofi
[] configure i3status
[] configure colors
[] find out how to install custom fonts
[] fint out how to
