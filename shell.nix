{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
    packages = [
        pkgs.elixir
        pkgs.erlang
        pkgs.inotify-tools
    ];
    shellHook = ''
        export ELIXIR_ERL_OPTIONS="+fnu"
    '';
}