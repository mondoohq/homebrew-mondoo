
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "7.7.1"

  if Hardware::CPU.intel?
    sha256 "e771578bbb540c06afcc83fdb8d1e806dddcf676b7fa34013c98dd65cf67fd10"
    url "https://releases.mondoo.com/cnspec/7.7.1/cnspec_7.7.1_darwin_amd64.tar.gz"
  else
    sha256 "3c1d1f1957b36d403e41976afaee164d1f5e7771960a903f1af71040704324fb"
    url "https://releases.mondoo.com/cnspec/7.7.1/cnspec_7.7.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

