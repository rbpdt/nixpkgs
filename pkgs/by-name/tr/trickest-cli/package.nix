{
  lib,
  buildGoModule,
  fetchFromGitHub,
}:

buildGoModule rec {
  pname = "trickest-cli";
  version = "2.1.2";

  src = fetchFromGitHub {
    owner = "trickest";
    repo = "trickest-cli";
    tag = "v${version}";
    hash = "sha256-OuCiW/5g4swtSpqM2rhLyB1syiRkyTbJsghEvyosz/A=";
  };

  vendorHash = "sha256-Ae0fNzYOAeCMrNFVhw4VvG/BkOMcguIMiBvLGt7wxEo=";

  ldflags = [
    "-s"
    "-w"
  ];

  meta = {
    description = "CLI tool to execute Trickest workflows";
    homepage = "https://github.com/trickest/trickest-cli";
    changelog = "https://github.com/trickest/trickest-cli/releases/tag/v${version}";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ fab ];
    mainProgram = "trickest";
  };
}
