
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "8.23.2"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "a29f2de41b115da2f66872b0a22479c31ed20b72b2b6b6fece0fa1f3d78d26c9"
    url "https://releases.mondoo.com/cnspec/8.23.2/cnspec_8.23.2_darwin_amd64.tar.gz"
  else
    sha256 "5360ca485b3477e772d928ce8500d6b341fec14f9f9bcf6c49e76bf091880cce"
    url "https://releases.mondoo.com/cnspec/8.23.2/cnspec_8.23.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

