
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "8.28.3"
  

  if Hardware::CPU.intel?
    sha256 "af4982e6dac7e738a172498f1017d5f8eecac71b0adcc38104305873446ce92f"
    url "https://releases.mondoo.com/cnquery/8.28.3/cnquery_8.28.3_darwin_amd64.tar.gz"
  else
    sha256 "b66801d622af92f8a93dd2598256af33956e01a5a0afd2d27de7443fbe326c73"
    url "https://releases.mondoo.com/cnquery/8.28.3/cnquery_8.28.3_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

