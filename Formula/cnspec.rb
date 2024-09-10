
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.21.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "0432f408595fc7ba941d8ace2548cb4ed8efa0b482c395e52c7a61b101e80db7"
    url "https://releases.mondoo.com/cnspec/11.21.0/cnspec_11.21.0_darwin_amd64.tar.gz"
  else
    sha256 "69e19f83ca9fac1af3f8d149a5a56c6930db7ccdd82e8ddf17a21af31e4b9ca0"
    url "https://releases.mondoo.com/cnspec/11.21.0/cnspec_11.21.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

