
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "10.8.0"
  

  if Hardware::CPU.intel?
    sha256 "4426feefb17d2c13fc24d1ea5b7250e1df5b930c5219255bc6873a8da5abb984"
    url "https://releases.mondoo.com/cnquery/10.8.0/cnquery_10.8.0_darwin_amd64.tar.gz"
  else
    sha256 "d025256f4adc8aeff7bb5be09c7c3bbac3b348f621337e51d20d7d30267cc40f"
    url "https://releases.mondoo.com/cnquery/10.8.0/cnquery_10.8.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

