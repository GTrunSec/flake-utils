{
  description = "Flake utils demo";

  outputs = { self, nixpkgs }:
    let flake-utils = import ../..; in
    flake-utils.simpleFlake {
      inherit self nixpkgs;
      name = "simple-flake";
      overlay = ./overlay.nix;
      shell = ./shell.nix;
    };
}
