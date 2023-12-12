
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "9.11.0"
  

  if Hardware::CPU.intel?
    sha256 "4403c206af970230d0a80002b0825e78b995ef8acf2ab093aecfcbf599bcc1aa"
    url "https://releases.mondoo.com/cnquery/9.11.0/cnquery_9.11.0_darwin_amd64.tar.gz"
  else
    sha256 "1e73b661897f0331bd040374c0bf15a09beb4351efc87e214598dd28bcc33110"
    url "https://releases.mondoo.com/cnquery/9.11.0/cnquery_9.11.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

