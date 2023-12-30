
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "9.12.2"
  

  if Hardware::CPU.intel?
    sha256 "3eb47fdd9ffca60a293ab4e1ef9ef4546a6b490e1668c17288aa12c0faf6b37a"
    url "https://releases.mondoo.com/cnquery/9.12.2/cnquery_9.12.2_darwin_amd64.tar.gz"
  else
    sha256 "b59680ced0d94eadd87c65101df2abe061d83520e74a8ba185e222b7b735e8d1"
    url "https://releases.mondoo.com/cnquery/9.12.2/cnquery_9.12.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

