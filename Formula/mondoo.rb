
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "7.15.0"

  if Hardware::CPU.intel?
    sha256 "819cc863158f057f7cb4e06696d17d42335a0b82ac521200e98a4350e6887242"
    url "https://releases.mondoo.com/mondoo/7.15.0/mondoo_7.15.0_darwin_amd64.tar.gz"
  else
    sha256 "ef70dcbe5c2db286cbc787aee487245135794bc4bbd9f69e6c515a2c4dfe5e2d"
    url "https://releases.mondoo.com/mondoo/7.15.0/mondoo_7.15.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

