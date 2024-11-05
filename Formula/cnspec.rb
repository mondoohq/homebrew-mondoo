
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.29.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "d3a28e5c97067b6dcbb6d8fc08ea6932011fcbc5ff1af6c88ae9d15ba8cba36c"
    url "https://releases.mondoo.com/cnspec/11.29.0/cnspec_11.29.0_darwin_amd64.tar.gz"
  else
    sha256 "8799e8f96087bd8bf4b172150ab1969b997917df7c4b0d37f533bce29bfe6bb9"
    url "https://releases.mondoo.com/cnspec/11.29.0/cnspec_11.29.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

