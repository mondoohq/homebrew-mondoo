
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "7.18.0"

  if Hardware::CPU.intel?
    sha256 "7251a821d6911fd3a0240207c0553d40e90952bbd1146d292ee7f82e4f6106e5"
    url "https://releases.mondoo.com/mondoo/7.18.0/mondoo_7.18.0_darwin_amd64.tar.gz"
  else
    sha256 "0e4ae1e74ddb3f4d630019b1b3214b49348bde4a684fc58b552c5edc4b8f5c52"
    url "https://releases.mondoo.com/mondoo/7.18.0/mondoo_7.18.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

