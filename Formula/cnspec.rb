
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.8.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "835dc3bc10d8edd01403b37e9bb6e9873387101a99995c281788f1fa8732a2f9"
    url "https://releases.mondoo.com/cnspec/11.8.0/cnspec_11.8.0_darwin_amd64.tar.gz"
  else
    sha256 "c341150eaa83483aafb24e688313d22701b23551ff8b6cc319dbfb21f4a6c600"
    url "https://releases.mondoo.com/cnspec/11.8.0/cnspec_11.8.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

