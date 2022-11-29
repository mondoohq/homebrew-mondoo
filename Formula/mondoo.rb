
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "7.6.0"

  if Hardware::CPU.intel?
    sha256 "c1d644aaf4eb0f1980ec998e5cc1e50a213d0ef34868637ba57493c06fac2ac4"
    url "https://releases.mondoo.com/mondoo/7.6.0/mondoo_7.6.0_darwin_amd64.tar.gz"
  else
    sha256 "18a6f3cc4f151e2eece6dbc1e185796aeedb51c643e16798eae69e51ed7e08ed"
    url "https://releases.mondoo.com/mondoo/7.6.0/mondoo_7.6.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

