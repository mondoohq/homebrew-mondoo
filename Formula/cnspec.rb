
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "8.5.2"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "05ca96f84200ed3f67b79ced0201235935a0ee90a3686ba50cbb269f75f59170"
    url "https://releases.mondoo.com/cnspec/8.5.2/cnspec_8.5.2_darwin_amd64.tar.gz"
  else
    sha256 "5015ab99e7d933d62f05e2cc33751338ff460b40accfd4ff25a9b2bd36485a8f"
    url "https://releases.mondoo.com/cnspec/8.5.2/cnspec_8.5.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

