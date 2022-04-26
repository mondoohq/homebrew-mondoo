
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "5.36.0"

  if Hardware::CPU.intel?
    sha256 "74bbeba17f6f06cb8f0604cb63b68602ae7a40f5d241cbe750164ba37711d272"
    url "https://releases.mondoo.com/mondoo/5.36.0/mondoo_5.36.0_darwin_amd64.tar.gz"
  else
    sha256 "4fa52fe6c4046cd3d824fda910ab762aced35ab3167aa1129cdd34fdd82ee711"
    url "https://releases.mondoo.com/mondoo/5.36.0/mondoo_5.36.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

