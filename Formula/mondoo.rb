
class Mondoo < Formula
  desc "Mondoo"
  homepage "https://mondoo.io"
  version "5.9.0"

  if Hardware::CPU.intel?
    sha256 "595bd6416b144bdc230d53ef915b44f93c3a6cd5beb918b96ae0a1dfa5a7d9ff"
    url "https://releases.mondoo.io/mondoo/5.9.0/mondoo_5.9.0_darwin_amd64.tar.gz"
  else
    sha256 "f0ea9f526a6c42d3ce5f1059fd585710ecace9344b4e7e4fc4577f498c95eb95"
    url "https://releases.mondoo.io/mondoo/5.9.0/mondoo_5.9.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

