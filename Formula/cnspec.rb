
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "7.5.1"

  if Hardware::CPU.intel?
    sha256 "1fc83bd86c2cb6fc97e6a605cadea839132597796a6b772e7a17739c1599f445"
    url "https://releases.mondoo.com/cnspec/7.5.1/cnspec_7.5.1_darwin_amd64.tar.gz"
  else
    sha256 "57e6353af0729f0490d431711832809285e15a2b77768e2e3b73d0324014b15b"
    url "https://releases.mondoo.com/cnspec/7.5.1/cnspec_7.5.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

