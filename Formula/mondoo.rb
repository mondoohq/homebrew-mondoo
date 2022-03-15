
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "5.30.0"

  if Hardware::CPU.intel?
    sha256 "5ea45bcf17496092b88f48d1f1228d5582eb034577cd983c5f636d95b9b14513"
    url "https://releases.mondoo.com/mondoo/5.30.0/mondoo_5.30.0_darwin_amd64.tar.gz"
  else
    sha256 "a3f222da828ac81d3d34b6c94fdd09ef6eb31a44be933c6aeab96cd38af7a4fd"
    url "https://releases.mondoo.com/mondoo/5.30.0/mondoo_5.30.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

