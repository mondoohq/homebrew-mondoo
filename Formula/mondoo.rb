
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "8.5.3"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "3cdee3de5e48d4163f416583aa5bf24ef4cbdeeee16d3fb98a4404a06725268a"
    url "https://releases.mondoo.com/mondoo/8.5.3/mondoo_8.5.3_darwin_amd64.tar.gz"
  else
    sha256 "3cdee3de5e48d4163f416583aa5bf24ef4cbdeeee16d3fb98a4404a06725268a"
    url "https://releases.mondoo.com/mondoo/8.5.3/mondoo_8.5.3_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

