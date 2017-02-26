{ nixpkgs, arch }:
let
  host = "${arch}-linux-musl";

  os = "linux";

  musl = nixpkgs.musl;

in
{
  # Target info
  inherit host arch os;

  # Toolchain
  inherit musl;

  # nixpkgs: a wide variety of programs and build tools
  inherit nixpkgs;

  # Expressions used to bootstrap the toolchain, not normally needed.

  # Support for various build tools
}
