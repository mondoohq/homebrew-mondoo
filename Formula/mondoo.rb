
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "6.8.0"

  if Hardware::CPU.intel?
    sha256 "02a05bcac2b1eb7874b13558f18dd0d402a12811e11b44bc811e186f27d8f410"
    url "https://releases.mondoo.com/mondoo/6.8.0/mondoo_6.8.0_darwin_amd64.tar.gz"
  else
    sha256 "424af1ed2fa792c308e72cfda1e322275efd88df7a8d197dbb3f10ef4a76c71a"
    url "https://releases.mondoo.com/mondoo/6.8.0/mondoo_6.8.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

