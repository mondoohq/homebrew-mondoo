
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "7.18.1"

  if Hardware::CPU.intel?
    sha256 "2325d837117f9597a72b429e60fe128f669a6c4a936593e69f764063a942dd33"
    url "https://releases.mondoo.com/mondoo/7.18.1/mondoo_7.18.1_darwin_amd64.tar.gz"
  else
    sha256 "db860d61d917d17794b53f72a3f0fe04a5601143cd579adcb3186feee9ce4a16"
    url "https://releases.mondoo.com/mondoo/7.18.1/mondoo_7.18.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

