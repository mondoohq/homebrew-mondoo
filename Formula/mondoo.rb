
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "5.29.2"

  if Hardware::CPU.intel?
    sha256 "419389ca5d12196420348f9dd9d8bbf1e27d0f75caeeeaa3e9f6210474409e68"
    url "https://releases.mondoo.com/mondoo/5.29.2/mondoo_5.29.2_darwin_amd64.tar.gz"
  else
    sha256 "a3bc21c4098cd69da18e4ef3c1c678b51c1c3d4c65b3cff6731560c39b09433c"
    url "https://releases.mondoo.com/mondoo/5.29.2/mondoo_5.29.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

