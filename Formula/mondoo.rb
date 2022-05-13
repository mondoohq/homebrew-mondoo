
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "5.38.3"

  if Hardware::CPU.intel?
    sha256 "951447c003ebde4fd05bebeac33909ed997ebed7ffe650cc99312994509927a6"
    url "https://releases.mondoo.com/mondoo/5.38.3/mondoo_5.38.3_darwin_amd64.tar.gz"
  else
    sha256 "bd182ba42356eeef94a61822f5fbd47d18fc0042e6b0255c6b543ce17eeff55d"
    url "https://releases.mondoo.com/mondoo/5.38.3/mondoo_5.38.3_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

