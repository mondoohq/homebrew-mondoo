
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "9.10.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "5042a9702549dc99b32689991103cb7eab5f6a77c65d2e0e117e0ded46d297ed"
    url "https://releases.mondoo.com/cnspec/9.10.0/cnspec_9.10.0_darwin_amd64.tar.gz"
  else
    sha256 "c610238967cbac5bf762f826ff607432f00ab2e7961011544e604e95a2af81f0"
    url "https://releases.mondoo.com/cnspec/9.10.0/cnspec_9.10.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

