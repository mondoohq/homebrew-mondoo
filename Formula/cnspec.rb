
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "10.12.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "bf711fd427c0f58f077d2f156d6f180da973c9d610b658a950c7b22a3b9ec969"
    url "https://releases.mondoo.com/cnspec/10.12.0/cnspec_10.12.0_darwin_amd64.tar.gz"
  else
    sha256 "4b38fedf3c5688c34bc35cb0d5ab2a18aa6e4021edfa52b886338b0908d6f102"
    url "https://releases.mondoo.com/cnspec/10.12.0/cnspec_10.12.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

