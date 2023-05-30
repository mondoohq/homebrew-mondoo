
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "8.12.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "7703d5f9c12c49a701675f10086fdcb3b82b229beca33fd4a4087e1821af22a5"
    url "https://releases.mondoo.com/cnspec/8.12.0/cnspec_8.12.0_darwin_amd64.tar.gz"
  else
    sha256 "7bce9a078a2c729c2c4b050b959f2211c3e9f14e476816242dfe762da7914191"
    url "https://releases.mondoo.com/cnspec/8.12.0/cnspec_8.12.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

