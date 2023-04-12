
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "8.5.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "016405ad8ec70a5775305807aaaf8cf988e1617a2f8d2487d9808e787f30f4ad"
    url "https://releases.mondoo.com/cnspec/8.5.1/cnspec_8.5.1_darwin_amd64.tar.gz"
  else
    sha256 "e1b72daa19648118cdd8bffffde6ca0fc50631e42fbcf48f5c9c944ba0e3de44"
    url "https://releases.mondoo.com/cnspec/8.5.1/cnspec_8.5.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

