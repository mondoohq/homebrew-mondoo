
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "7.7.1"

  if Hardware::CPU.intel?
    sha256 "c3e5b71f07e8ff977b6a15470da7a3bbcabb8e3b793999067959e1746f97aa87"
    url "https://releases.mondoo.com/mondoo/7.7.1/mondoo_7.7.1_darwin_amd64.tar.gz"
  else
    sha256 "b4f55bc765fbc5ac3f0029851deaa83c6c1804ba5e0c1b21d37f759e8f300a9a"
    url "https://releases.mondoo.com/mondoo/7.7.1/mondoo_7.7.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

