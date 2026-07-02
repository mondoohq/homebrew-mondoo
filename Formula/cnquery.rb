
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "13.27.4"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "8194b9f1a1e656007d310f7b23e68205f7191f81afd7bc7282db0ab3e49eb862"
    url "https://releases.mondoo.com/cnspec/13.27.4/cnspec_13.27.4_darwin_amd64.tar.gz"
  else
    sha256 "bdea19a58513c0a77f12e6f30daf4e9cd6a27ee60c616df38144d5143ba8802b"
    url "https://releases.mondoo.com/cnspec/13.27.4/cnspec_13.27.4_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

