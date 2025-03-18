
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.46.0"
  

  if Hardware::CPU.intel?
    sha256 "0069a7b113dd804839ec9e0849d62738feda17c64c1fb740e25ede8ef68d3398"
    url "https://releases.mondoo.com/cnquery/11.46.0/cnquery_11.46.0_darwin_amd64.tar.gz"
  else
    sha256 "3d08f704af53bad5e3f308763af4efae7e6080be9ffa0bf36b5f010e3950fd38"
    url "https://releases.mondoo.com/cnquery/11.46.0/cnquery_11.46.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

