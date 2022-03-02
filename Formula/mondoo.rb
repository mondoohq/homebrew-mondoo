
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.io"
  version "5.29.1"

  if Hardware::CPU.intel?
    sha256 "bfc388ada8d65c7ed41b43675b3937d9d6c4b4aace3ac48268f76f0b2d8000d3"
    url "https://releases.mondoo.io/mondoo/5.29.1/mondoo_5.29.1_darwin_amd64.tar.gz"
  else
    sha256 "8efb22dc41a829d1e933c99de32166338f37f3bd37f9bbcb3abf380dc0345777"
    url "https://releases.mondoo.io/mondoo/5.29.1/mondoo_5.29.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

