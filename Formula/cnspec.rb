
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "12.3.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "4df08878d8919ae4b3596e7952d6fd5595764d981c12dfee8d90f154c8fd3003"
    url "https://releases.mondoo.com/cnspec/12.3.0/cnspec_12.3.0_darwin_amd64.tar.gz"
  else
    sha256 "f427f3b49f66f015bbf72f52fe51802a470c354012c690ba6e192d1993034669"
    url "https://releases.mondoo.com/cnspec/12.3.0/cnspec_12.3.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

