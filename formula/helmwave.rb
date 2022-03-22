# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Helmwave < Formula
  desc "HelmWave is like docker-compose for helm"
  homepage ""
  version "0.19.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/helmwave/helmwave/releases/download/v0.19.0/helmwave_0.19.0_darwin_amd64.tar.gz"
      sha256 "965f7335407caac4d59ddd744c21803e800ff5cbb4daf83cf4ba8acb2c6d4033"

      def install
        bin.install "helmwave"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/helmwave/helmwave/releases/download/v0.19.0/helmwave_0.19.0_darwin_arm64.tar.gz"
      sha256 "7762574baa8f1a12fb2e87142a046e05887e761ca336352dd53524aa474c9bad"

      def install
        bin.install "helmwave"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/helmwave/helmwave/releases/download/v0.19.0/helmwave_0.19.0_linux_arm64.tar.gz"
      sha256 "e32bf434e3a17cc3c76e4f70802ea8ce9451e9133f7b73fc29a286c0c58f53c6"

      def install
        bin.install "helmwave"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/helmwave/helmwave/releases/download/v0.19.0/helmwave_0.19.0_linux_amd64.tar.gz"
      sha256 "7b9d0fb76149aab95ff1aa2a44eb80a06b17b8e0fb32c181aed3b256558f3164"

      def install
        bin.install "helmwave"
      end
    end
  end
end
