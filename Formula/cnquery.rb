
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.40.0"
  

  if Hardware::CPU.intel?
    sha256 "2b8ef362fa3a3a9aee9336b907eb98d12822452ea06998fe42a36c4fd546f114"
    url "https://releases.mondoo.com/cnquery/11.40.0/cnquery_11.40.0_darwin_amd64.tar.gz"
  else
    sha256 "33f1da71a57c275eac7f55d526f1c4895c3eb0aa8c517ef2e6c3245eb38abb06"
    url "https://releases.mondoo.com/cnquery/11.40.0/cnquery_11.40.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

