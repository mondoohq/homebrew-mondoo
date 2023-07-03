
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "8.17.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "486febd727cd9910bc2ded03b641c955b785c94b662f7f3e40c430c124164667"
    url "https://releases.mondoo.com/cnspec/8.17.0/cnspec_8.17.0_darwin_amd64.tar.gz"
  else
    sha256 "234936711a0a31eb95cc6b79df3a9f39c4bd7ee6ddcdeaefd733796c85055c2c"
    url "https://releases.mondoo.com/cnspec/8.17.0/cnspec_8.17.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

