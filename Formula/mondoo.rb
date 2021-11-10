
class Mondoo < Formula
  desc "Mondoo"
  homepage "https://mondoo.io"
  version "5.13.0"

  if Hardware::CPU.intel?
    sha256 "74d75c6df27450fc87e46aec9684ca6e26bcbdcbffdbf841aa9749a4cfa8d35d"
    url "https://releases.mondoo.io/mondoo/5.13.0/mondoo_5.13.0_darwin_amd64.tar.gz"
  else
    sha256 "bc52b212bcad4a180196731a73c95ffdf66fcef499d78008267f38facfa806d2"
    url "https://releases.mondoo.io/mondoo/5.13.0/mondoo_5.13.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

