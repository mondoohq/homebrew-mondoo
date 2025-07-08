
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.62.0"
  

  if Hardware::CPU.intel?
    sha256 "cac7d54a707de5cff530bb5d7775dcad966735987b8ebae79a35892c6d56b5c7"
    url "https://releases.mondoo.com/cnquery/11.62.0/cnquery_11.62.0_darwin_amd64.tar.gz"
  else
    sha256 "c78ba983d8f54d14b3c0c325f1f1acf53fee51efccca5da03862291e19efcc95"
    url "https://releases.mondoo.com/cnquery/11.62.0/cnquery_11.62.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

