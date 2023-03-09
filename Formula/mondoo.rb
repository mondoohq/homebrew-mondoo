
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "8.0.0"

  if Hardware::CPU.intel?
    sha256 "7bcb5ba9d79aab3528ebb60a5bcba239042c59e20dea87435efa956f1ede7fcb"
    url "https://releases.mondoo.com/mondoo/8.0.0/mondoo_8.0.0_darwin_amd64.tar.gz"
  else
    sha256 "9c5f83c54774114c59c9687fa54010d4ada965648feb8c4b67301f7fcd8ecb54"
    url "https://releases.mondoo.com/mondoo/8.0.0/mondoo_8.0.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

