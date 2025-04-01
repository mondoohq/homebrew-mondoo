
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.48.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "db8470f4c9967c54eba44d12097dcbf9d46f9679f4ac62c3178f3c397d0225cf"
    url "https://releases.mondoo.com/cnspec/11.48.0/cnspec_11.48.0_darwin_amd64.tar.gz"
  else
    sha256 "ca17c8a21c81137081ad0ded55d49cba5ce4fdaa34bdb3ae11e6493c7a6afb64"
    url "https://releases.mondoo.com/cnspec/11.48.0/cnspec_11.48.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

