
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "12.14.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "2f122d055dd623124db3d3a7212da846800b092bb61e31418f8c51e56a15e65d"
    url "https://releases.mondoo.com/cnspec/12.14.1/cnspec_12.14.1_darwin_amd64.tar.gz"
  else
    sha256 "3cfd6938a058f074a3b0e1d310321ae1995b42a724f259ce38b5b5282c55b444"
    url "https://releases.mondoo.com/cnspec/12.14.1/cnspec_12.14.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

