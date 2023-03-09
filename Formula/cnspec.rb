
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "8.0.0"

  if Hardware::CPU.intel?
    sha256 "0ea9394f044fecbde9b1110513db0699a1518677bd777b5bf37234734d8e98d0"
    url "https://releases.mondoo.com/cnspec/8.0.0/cnspec_8.0.0_darwin_amd64.tar.gz"
  else
    sha256 "0a383b6146c78cdd3ecf030fab2f45722eb2634abe01ae6099f5b86bab12240c"
    url "https://releases.mondoo.com/cnspec/8.0.0/cnspec_8.0.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

