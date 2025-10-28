
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "12.7.0"
  

  if Hardware::CPU.intel?
    sha256 "c2006d2de9b32915a76537bf82bcb883802012a9971f47948f81ecebc74d9ec9"
    url "https://releases.mondoo.com/cnquery/12.7.0/cnquery_12.7.0_darwin_amd64.tar.gz"
  else
    sha256 "d66b2781eeb797532aac230719737f6ac222dac4b0e1e1d3e24541d0f631753d"
    url "https://releases.mondoo.com/cnquery/12.7.0/cnquery_12.7.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

