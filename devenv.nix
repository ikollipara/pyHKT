{ pkgs, ... }:

{
  # https://devenv.sh/basics/

  # https://devenv.sh/packages/
  packages = [ pkgs.git pkgs.poetry pkgs.python310Packages.flake8 pkgs.nodejs ];

  # https://devenv.sh/scripts/

  enterShell = ''
    git --version
    zsh
  '';

  # https://devenv.sh/languages/
  # languages.nix.enable = true;
  languages.python.enable = true;

  # https://devenv.sh/pre-commit-hooks/
  # pre-commit.hooks.shellcheck.enable = true;

  # https://devenv.sh/processes/
  # processes.ping.exec = "ping example.com";

  # See full reference at https://devenv.sh/reference/options/
}
