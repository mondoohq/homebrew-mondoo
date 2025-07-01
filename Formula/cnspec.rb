
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.61.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "a5ed388622f9493c1ad359a3d01a93951e45861894b5ac7c08d7140ef73142c1"
    url "https://releases.mondoo.com/cnspec/11.61.0/cnspec_11.61.0_darwin_amd64.tar.gz"
  else
    sha256 "5aa6f0f35c06517ed48f2dde47abbbc3e496593776f7c41be24a50311e69aee5"
    url "https://releases.mondoo.com/cnspec/11.61.0/cnspec_11.61.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

