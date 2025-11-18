
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "12.10.0"
  

  if Hardware::CPU.intel?
    sha256 "1308dcc592e206c6768da4f879d14e674d87379477fcb3d6ea02094e5e85aec3"
    url "https://releases.mondoo.com/cnquery/12.10.0/cnquery_12.10.0_darwin_amd64.tar.gz"
  else
    sha256 "5e3bac89a44376f749b83bdaef18dbdd8f64c1b8b56025370f42a27987afe76e"
    url "https://releases.mondoo.com/cnquery/12.10.0/cnquery_12.10.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

