
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "8.24.2"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "c750159b8a2e4253f01bcb3c54dd2eec2ec320dad35c749de75da7e378678dca"
    url "https://releases.mondoo.com/cnspec/8.24.2/cnspec_8.24.2_darwin_amd64.tar.gz"
  else
    sha256 "bbd2b8a54e59ffa4639fd6b3800d9e8f30743aff812b8d2ec8b2a61513d2d0bd"
    url "https://releases.mondoo.com/cnspec/8.24.2/cnspec_8.24.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

