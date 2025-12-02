
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "12.12.0"
  

  if Hardware::CPU.intel?
    sha256 "b36c96dd42ea69484edc0cfe00dbf6569791b4668e8b3c25f136c37f03a02f4b"
    url "https://releases.mondoo.com/cnquery/12.12.0/cnquery_12.12.0_darwin_amd64.tar.gz"
  else
    sha256 "3553b4ca996ee4d82906089ade895311808aed622dcc8e356b80d09a276b3af1"
    url "https://releases.mondoo.com/cnquery/12.12.0/cnquery_12.12.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

