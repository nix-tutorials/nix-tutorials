{
  inputs = {};
  outputs = {self, nixpkgs, ...}@inputs:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs{inherit system;};
    in
    {
      packages."${system}".default = with pkgs; stdenv.mkDerivation {
        name = "example_tutorial";
        buildInputs = [];
      };
  };
}
