{
  pkgs ? import <nixpkgs> { },
}:

with pkgs;

mkShell {
  buildInputs = [
    erlang
    elixir
    elixir_ls
    git
    curl
    jq

    nodejs
    postgresql
  ];

  shellHook = ''
    echo "in elixer dev"

    export HEX_HOME="$PWD/.hex"
    export MIX_HOME="$PWD/.mix"
    export PATH="$PWD/.mix/escripts:$PATH"

    elixir --version
  '';
}
