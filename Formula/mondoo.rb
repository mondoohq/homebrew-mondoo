
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "8.11.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "0d96305a562771a417db1b78c8d18fe78b6084de274cf5b28746061fa11fa53d"
    url "https://releases.mondoo.com/mondoo/8.11.0/mondoo_8.11.0_darwin_amd64.tar.gz"
  else
    sha256 "0d96305a562771a417db1b78c8d18fe78b6084de274cf5b28746061fa11fa53d"
    url "https://releases.mondoo.com/mondoo/8.11.0/mondoo_8.11.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

