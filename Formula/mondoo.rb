
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "8.3.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "482319f9e3a315e5cdf5c0fbb2b7e18dab8e2d177619b378d5db00edab77ab91"
    url "https://releases.mondoo.com/mondoo/8.3.0/mondoo_8.3.0_darwin_amd64.tar.gz"
  else
    sha256 "482319f9e3a315e5cdf5c0fbb2b7e18dab8e2d177619b378d5db00edab77ab91"
    url "https://releases.mondoo.com/mondoo/8.3.0/mondoo_8.3.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

