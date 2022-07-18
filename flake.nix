{
  description = "SIPVicious as a nix flake";

  outputs = { self, nixpkgs }: {
    packages.x86_64-linux.sipvicious = nixpkgs.legacyPackages.x86_64-linux.callPackage ./default.nix {};

    defaultPackage.x86_64-linux = self.packages.x86_64-linux.sipvicious;
  };
}
