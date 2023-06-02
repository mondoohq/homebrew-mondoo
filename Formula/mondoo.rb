
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "8.12.1"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "ef1f62732c2ad572a4dfa82b864dd5e185b98b7059e19b28ec62ac77017887f0"
    url "https://releases.mondoo.com/mondoo/8.12.1/mondoo_8.12.1_darwin_amd64.tar.gz"
  else
    sha256 "ef1f62732c2ad572a4dfa82b864dd5e185b98b7059e19b28ec62ac77017887f0"
    url "https://releases.mondoo.com/mondoo/8.12.1/mondoo_8.12.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

