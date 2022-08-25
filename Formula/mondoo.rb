
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "6.12.2"

  if Hardware::CPU.intel?
    sha256 "a20f78fb4626d5212b8607a4a94a3315e7e13a15c5bcf6c2546771929c72fd49"
    url "https://releases.mondoo.com/mondoo/6.12.2/mondoo_6.12.2_darwin_amd64.tar.gz"
  else
    sha256 "b0f25124898030d8a593953f6e102402548d55ebe59dade09c5e54b20f8c2f45"
    url "https://releases.mondoo.com/mondoo/6.12.2/mondoo_6.12.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

