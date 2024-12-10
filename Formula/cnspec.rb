
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.34.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "4af0d73e9e41a72ee74c48834c5fdd0e9c09276eb72880352c2f469daa33ac65"
    url "https://releases.mondoo.com/cnspec/11.34.0/cnspec_11.34.0_darwin_amd64.tar.gz"
  else
    sha256 "580583f6b8a59eda82936c764afb83d65d866c310ac1137919991af10c3e70be"
    url "https://releases.mondoo.com/cnspec/11.34.0/cnspec_11.34.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

