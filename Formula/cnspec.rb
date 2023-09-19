
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "8.28.2"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "7e0a6bd5717f03a9ca3a5ff5adc8de6e8549c8a4e6d853039298b5da4e99b4f7"
    url "https://releases.mondoo.com/cnspec/8.28.2/cnspec_8.28.2_darwin_amd64.tar.gz"
  else
    sha256 "a3b86453df3aacde7108b9ff49c2bf589a8e680e632681ade192acd2850a3d36"
    url "https://releases.mondoo.com/cnspec/8.28.2/cnspec_8.28.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

