{ pkgs ? import <nixpkgs> {} }:

with pkgs.python3Packages;

buildPythonPackage rec {
  pname = "we-get";
  version = "1.0";

  src = ./.;

  format = "pyproject";

  nativeBuildInputs = [
    poetry-core
  ];

  propagatedBuildInputs = [
    colorama
    docopt
    beautifulsoup4
    prompt_toolkit
    pygments
  ];
}
