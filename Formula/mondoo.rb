
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "8.12.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "18c1269a27ae438682852e8442f09cd6df67d2e7155a67569a4cce16f9f966cf"
    url "https://releases.mondoo.com/mondoo/8.12.0/mondoo_8.12.0_darwin_amd64.tar.gz"
  else
    sha256 "18c1269a27ae438682852e8442f09cd6df67d2e7155a67569a4cce16f9f966cf"
    url "https://releases.mondoo.com/mondoo/8.12.0/mondoo_8.12.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

