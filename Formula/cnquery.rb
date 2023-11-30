
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "9.9.2"
  

  if Hardware::CPU.intel?
    sha256 "f1a6f8bf6d5b2af5fc611917dc9639943eaba74e6cbcb696276edda3ff82d95e"
    url "https://releases.mondoo.com/cnquery/9.9.2/cnquery_9.9.2_darwin_amd64.tar.gz"
  else
    sha256 "c64cd5139964d30d085cb8c226aecb629919cbeb91a7a45abc619db43c51e042"
    url "https://releases.mondoo.com/cnquery/9.9.2/cnquery_9.9.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

