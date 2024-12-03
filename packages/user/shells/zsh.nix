{
  pkgs,
  config,
  lib,
  ...
}:
{
  home.file = {
    ".local/share/zsh/zsh-autosuggestions".source = "${pkgs.zsh-autosuggestions}/share/zsh-autosuggestions";
    ".local/share/zsh/zsh-powerlevel10k".source = "${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k";
  };

  programs.zoxide = {
    enable = true;
    enableZshIntegration = true;
  };

  programs.zsh = {
    enable = true;
    dotDir = ".config/zsh";
    plugins = [
      {
        name = "powerlevel10k";
        src = pkgs.zsh-powerlevel10k;
        file = "share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
      }
    ];
    history = {
      size = 10000;
    };
    shellAliases = {
      z = "zoxide";
      nv = "nvim";
      py = "python3";
      ls = "exa -1 --icons";
      lt = "exa --tree --level=3";
      lx = "exa -lbhHigUmuSa@ --time-style=long-iso --git --color-scale";
      lS = "exa -1 --icons";
      le = "exa --tree";
      tsk = "taskwarrior-tui";
    };
    oh-my-zsh = {
      enable = true;
      plugins = [ ];
    };
  };

  programs.zsh.initExtra = ''
      # setopt autocd
      # eval "$(zoxide) init zsh"

      ZSH_THEME="powerlevel10k/powerlevel10k"
    	ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#990033,bold,underline"
    	bindkey '^I ' autosuggest-accept

      [ -f $HOME/.local/share/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh ] && \
      source "$HOME/.local/share/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh"

      [[ ! -f $HOME/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

    	'';

  home.packages = with pkgs; [
    zsh-powerlevel10k
    oh-my-zsh
  ];
}
