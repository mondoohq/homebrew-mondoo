
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.36.1"
  

  if Hardware::CPU.intel?
    sha256 "5c2ba01add27a60f7a482d01e3666940fc8c25559ceaa9f0bacfbcd7116fa0f0"
    url "https://releases.mondoo.com/cnquery/11.36.1/cnquery_11.36.1_darwin_amd64.tar.gz"
  else
    sha256 "e6b6ef6d7722eb78fe035a3c5512016cda8ff1168164f8a781a019362aee00f5"
    url "https://releases.mondoo.com/cnquery/11.36.1/cnquery_11.36.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

