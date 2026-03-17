
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package: cnquery has been renamed, install cnspec instead"
  homepage "https://mondoo.com"
  version "13.1.0"
  depends_on "cnspec"

  url "https://mondoo.com"
  sha256 :no_check

  def install
    # cnspec already provides the cnquery symlink via bin.install_symlink
    # Install a placeholder so Homebrew doesn't error with "Empty installation"
    (share/"cnquery").mkpath
    (share/"cnquery/README").write <<~EOS
      cnquery has been renamed to mql. This formula installs cnspec
      (which depends on mql) for backward compatibility.
    EOS
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end
