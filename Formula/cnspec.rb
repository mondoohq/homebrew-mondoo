
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "12.9.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "0f29a99f0209f3739c9cd339e6365d146482874d5d833a261f43641607089843"
    url "https://releases.mondoo.com/cnspec/12.9.0/cnspec_12.9.0_darwin_amd64.tar.gz"
  else
    sha256 "e7082c90eebcc8c3e1538fedae032546230c3e3a79bc7f2ea67d173b5b406390"
    url "https://releases.mondoo.com/cnspec/12.9.0/cnspec_12.9.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

