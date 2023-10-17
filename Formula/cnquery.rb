
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "9.2.1"
  

  if Hardware::CPU.intel?
    sha256 "45e4fc54596ecc3bdf1ac9a7275c88a2f8bf2aff3436a44a1981a2a2b6471e45"
    url "https://releases.mondoo.com/cnquery/9.2.1/cnquery_9.2.1_darwin_amd64.tar.gz"
  else
    sha256 "18a681c67959d025537579fc09a520d5c08ffc0929cc6f6170c6b9359a342fe3"
    url "https://releases.mondoo.com/cnquery/9.2.1/cnquery_9.2.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

