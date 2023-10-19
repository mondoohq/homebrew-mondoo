
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "9.2.2"
  

  if Hardware::CPU.intel?
    sha256 "23b8b30aeb00cd9d32de9ef1fc556ef4a73fe6ead1c8a6ef26cd0c8be45aad2a"
    url "https://releases.mondoo.com/cnquery/9.2.2/cnquery_9.2.2_darwin_amd64.tar.gz"
  else
    sha256 "0bf407d5fb94a755ab3c21d24c281f5ded7b121b4c0ef3e4798ae96c3f5891ef"
    url "https://releases.mondoo.com/cnquery/9.2.2/cnquery_9.2.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

