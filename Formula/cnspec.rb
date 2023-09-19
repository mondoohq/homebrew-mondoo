
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "8.28.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "dccdc27eb99863d12a0896d530525e368f299b0605f8c5967f0bc6069c9782d6"
    url "https://releases.mondoo.com/cnspec/8.28.1/cnspec_8.28.1_darwin_amd64.tar.gz"
  else
    sha256 "6ca78c636aa2fbbc569f448c727382f90dc994a181af2e60d97704fb7ca6233f"
    url "https://releases.mondoo.com/cnspec/8.28.1/cnspec_8.28.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

