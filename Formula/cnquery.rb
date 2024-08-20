
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.18.0"
  

  if Hardware::CPU.intel?
    sha256 "dd733ae8cf3ae729ab6c7a550f167f4317541fedd8ca8d60cbb460f6fa984688"
    url "https://releases.mondoo.com/cnquery/11.18.0/cnquery_11.18.0_darwin_amd64.tar.gz"
  else
    sha256 "35152b6e89800899871c4dda2e6b27af4e977399acfc4ac4a6ec193b8c5335d5"
    url "https://releases.mondoo.com/cnquery/11.18.0/cnquery_11.18.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

