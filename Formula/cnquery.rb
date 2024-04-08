
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "10.11.1"
  

  if Hardware::CPU.intel?
    sha256 "20318fb75ff3cbdfd6c3c88e41cc64f1e63d2827dc9df7d8afa4a80a22bc6993"
    url "https://releases.mondoo.com/cnquery/10.11.1/cnquery_10.11.1_darwin_amd64.tar.gz"
  else
    sha256 "dce409c52b55cec1e0256da8bbbd2e7afefb786d70df828558f8527463d1a3f4"
    url "https://releases.mondoo.com/cnquery/10.11.1/cnquery_10.11.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

