
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "10.11.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "f6cd021baebb6d09189c830e2f8a45f6221946f4cfd763303811ddf3e8f6f90c"
    url "https://releases.mondoo.com/cnspec/10.11.1/cnspec_10.11.1_darwin_amd64.tar.gz"
  else
    sha256 "5a182aed244fc7efa440a5b3ac6543d7cf8ac4a120c1118d8ca27db4522ff2e2"
    url "https://releases.mondoo.com/cnspec/10.11.1/cnspec_10.11.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

