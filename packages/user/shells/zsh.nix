{pkgs, config, lib, ... }:
{
	home.packages = with pkgs; [ zsh-powerlevel10k oh-my-zsh];
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
		shellAliases = {
			nv = "nvim";
			py = "python3";
		};
		oh-my-zsh = {
			enable = true;
			plugins = [];
		};
	};

	programs.zsh.initExtra = ''
	source ~/.p10k.zsh

	ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#aaaaba,bold,underline"
	bindkey '^I ' autosuggest-accept
	'';

	home.file = {
			".local/share/zsh-autosuggestions".source = "${pkgs.zsh-autosuggestions}/share/zsh-autosuggestions";
	};
}
