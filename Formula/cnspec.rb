
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "9.5.2"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "a5f5d45c564c543dc24b186dbd464f64405fabc58201db81547aaa731f0d46d9"
    url "https://releases.mondoo.com/cnspec/9.5.2/cnspec_9.5.2_darwin_amd64.tar.gz"
  else
    sha256 "a4aec36bea8dae35fac92d6a164abd8aad6a62c682efc3d7c18317bc2b3f2b45"
    url "https://releases.mondoo.com/cnspec/9.5.2/cnspec_9.5.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

