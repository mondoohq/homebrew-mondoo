
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "8.23.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "e47084001a7a99964197b5339883069d5b68b4090618361ea9e139a794948d02"
    url "https://releases.mondoo.com/mondoo/8.23.0/mondoo_8.23.0_darwin_amd64.tar.gz"
  else
    sha256 "e47084001a7a99964197b5339883069d5b68b4090618361ea9e139a794948d02"
    url "https://releases.mondoo.com/mondoo/8.23.0/mondoo_8.23.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

