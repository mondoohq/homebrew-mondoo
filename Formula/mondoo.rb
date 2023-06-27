
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "8.16.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "2868ea2de90eb3d409d38daab54e8be2c04eb423dd5aee80ef47597e1487c0df"
    url "https://releases.mondoo.com/mondoo/8.16.0/mondoo_8.16.0_darwin_amd64.tar.gz"
  else
    sha256 "2868ea2de90eb3d409d38daab54e8be2c04eb423dd5aee80ef47597e1487c0df"
    url "https://releases.mondoo.com/mondoo/8.16.0/mondoo_8.16.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

