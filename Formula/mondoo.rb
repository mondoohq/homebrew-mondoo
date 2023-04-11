
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "8.5.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "7d0285b9c28c9b59204ac1cf7c398fa83ca3273ac6420636fb43e851fcf43f8b"
    url "https://releases.mondoo.com/mondoo/8.5.0/mondoo_8.5.0_darwin_amd64.tar.gz"
  else
    sha256 "7d0285b9c28c9b59204ac1cf7c398fa83ca3273ac6420636fb43e851fcf43f8b"
    url "https://releases.mondoo.com/mondoo/8.5.0/mondoo_8.5.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

