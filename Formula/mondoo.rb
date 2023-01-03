
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "7.11.0"

  if Hardware::CPU.intel?
    sha256 "5cbee430db1ac3b28d59c3237e8af807de692db64556489b7f9c09500bdce80f"
    url "https://releases.mondoo.com/mondoo/7.11.0/mondoo_7.11.0_darwin_amd64.tar.gz"
  else
    sha256 "838678b39aa44788250aa26e9d3026d7daec9a928ff2b5e7b594af1c40357b79"
    url "https://releases.mondoo.com/mondoo/7.11.0/mondoo_7.11.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

