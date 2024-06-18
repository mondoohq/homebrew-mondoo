
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.9.0"
  

  if Hardware::CPU.intel?
    sha256 "6567fe8515299e81502ce05a831129572aad09d58618d71ce6a5d33aa623e878"
    url "https://releases.mondoo.com/cnquery/11.9.0/cnquery_11.9.0_darwin_amd64.tar.gz"
  else
    sha256 "1f00d3a7325bec260c93316af5c10b06c33852e3f038673e94bbd3acf45c2466"
    url "https://releases.mondoo.com/cnquery/11.9.0/cnquery_11.9.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

