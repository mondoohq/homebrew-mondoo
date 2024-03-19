
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "10.8.1"
  

  if Hardware::CPU.intel?
    sha256 "adfc5fbd76b0249292818f3367010324655f9564e61c2db9fe9c526efe5a7975"
    url "https://releases.mondoo.com/cnquery/10.8.1/cnquery_10.8.1_darwin_amd64.tar.gz"
  else
    sha256 "e60532d1d4a2e66ce3e147e6146fbda9102f71c8c5d5bbb15ef3f22abb7b6e6d"
    url "https://releases.mondoo.com/cnquery/10.8.1/cnquery_10.8.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

