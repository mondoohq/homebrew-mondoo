
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "9.0.1"
  

  if Hardware::CPU.intel?
    sha256 "8221d0915cae831a243f037a0376c11ac823d8aa94983b5004b3339c0da909e3"
    url "https://releases.mondoo.com/cnquery/9.0.1/cnquery_9.0.1_darwin_amd64.tar.gz"
  else
    sha256 "9018867ee244abe79a0187c18f3fe79017821a0e1de14fd0178092454ac905da"
    url "https://releases.mondoo.com/cnquery/9.0.1/cnquery_9.0.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

