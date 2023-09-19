
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "8.28.2"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "5a70db37e4dc8f8198d8765f7124e8b13fa484306ced95227c87b5537c46dcf9"
    url "https://releases.mondoo.com/mondoo/8.28.2/mondoo_8.28.2_darwin_amd64.tar.gz"
  else
    sha256 "5a70db37e4dc8f8198d8765f7124e8b13fa484306ced95227c87b5537c46dcf9"
    url "https://releases.mondoo.com/mondoo/8.28.2/mondoo_8.28.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

