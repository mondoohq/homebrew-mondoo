
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.io"
  version "5.23.0"

  if Hardware::CPU.intel?
    sha256 "8b15fee219f1f8c358ffb6a8802648454361f04f2d9d0c4c9b6d3f1fa091e524"
    url "https://releases.mondoo.io/mondoo/5.23.0/mondoo_5.23.0_darwin_amd64.tar.gz"
  else
    sha256 "55d184ed92abaef2544b06dc0d5eb16a3c61f1a05f4e5915989b47c74527e642"
    url "https://releases.mondoo.io/mondoo/5.23.0/mondoo_5.23.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

