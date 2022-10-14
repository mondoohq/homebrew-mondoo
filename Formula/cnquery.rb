
class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "7.0.0-alpha1"

  if Hardware::CPU.intel?
    sha256 "6f8866cd34a4a9ca014ed87a94e723199d63c95199db2782c9256f69e582fd9e"
    url "https://releases.mondoo.com/cnquery/7.0.0-alpha1/cnquery_7.0.0-alpha1_darwin_amd64.tar.gz"
  else
    sha256 "f740993d70e450f201d8b8991d0c1211f8e2f32305a1006b886aefd535310ff6"
    url "https://releases.mondoo.com/cnquery/7.0.0-alpha1/cnquery_7.0.0-alpha1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

