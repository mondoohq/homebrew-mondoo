
class Mondoo < Formula
  desc "Mondoo"
  homepage "https://mondoo.io"
  version "5.16.1"

  if Hardware::CPU.intel?
    sha256 "c9b6035e937500facbb855d5640061e58c7f596a6d3d6ab25732b0edb34ad909"
    url "https://releases.mondoo.io/mondoo/5.16.1/mondoo_5.16.1_darwin_amd64.tar.gz"
  else
    sha256 "b8922650fb8ce1254f4b3fa5c604f533b53dc8d0039f730a068d0d26b31c768b"
    url "https://releases.mondoo.io/mondoo/5.16.1/mondoo_5.16.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

