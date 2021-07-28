# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Helmwave < Formula
  desc "HelmWave is like docker-compose for helm"
  homepage ""
  version "0.12.6"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/helmwave/helmwave/releases/download/v0.12.6/helmwave_0.12.6_darwin_amd64.tar.gz"
      sha256 "a0c19fb39b91454e4c02706af4d4c07af834f466c18dc5028d90dabec761c9bb"
    end
    if Hardware::CPU.arm?
      url "https://github.com/helmwave/helmwave/releases/download/v0.12.6/helmwave_0.12.6_darwin_arm64.tar.gz"
      sha256 "27069183ee7f455d6c0595ff13fa1fff7b82be9dc1458e35c951c0f64588b31d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/helmwave/helmwave/releases/download/v0.12.6/helmwave_0.12.6_linux_amd64.tar.gz"
      sha256 "bdef8ac2fa4195b3d03322b8b799553c7b2d0e42cf89ed4ddb71522a9b853795"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/helmwave/helmwave/releases/download/v0.12.6/helmwave_0.12.6_linux_arm64.tar.gz"
      sha256 "d62093456480bf96e5e536906e291b643288f9f1ab7cbcd830a4d92960698d8f"
    end
  end

  def install
    bin.install "helmwave"
  end
end
