
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.66.1"
  

  if Hardware::CPU.intel?
    sha256 "7abf2d935ab21f98c8df718bc4146dc87252b4608eab6e7203941a84fe1b167c"
    url "https://releases.mondoo.com/cnquery/11.66.1/cnquery_11.66.1_darwin_amd64.tar.gz"
  else
    sha256 "5e3baf33e64449c0916ce5378c80153770d6e96133ef69e86aa1554f723c9b3c"
    url "https://releases.mondoo.com/cnquery/11.66.1/cnquery_11.66.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

