# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Yor < Formula
  desc "Extensible auto-tagger for your IaC files"
  homepage "https://www.yor.io"
  version "0.1.162"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bridgecrewio/yor/releases/download/0.1.162/yor_0.1.162_darwin_amd64.tar.gz"
      sha256 "1d72049458b42bc7313a3784ba93bceb34719f6fd2246b4c161b058184e20276"

      def install
        bin.install "yor"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/bridgecrewio/yor/releases/download/0.1.162/yor_0.1.162_darwin_arm64.tar.gz"
      sha256 "8ac20dad0adb8e7d7e2ae0541ef12b6839d815118f1d79ee2e8a893d838c26b2"

      def install
        bin.install "yor"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bridgecrewio/yor/releases/download/0.1.162/yor_0.1.162_linux_arm64.tar.gz"
      sha256 "791004389ef6431d531e40e7073451527dd6f579db76b0b6ed264aab98ab6c90"

      def install
        bin.install "yor"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bridgecrewio/yor/releases/download/0.1.162/yor_0.1.162_linux_amd64.tar.gz"
      sha256 "b18be60e79607f61fdce98909bf1e5847c19f9b2e8f70e0693f75d2717450739"

      def install
        bin.install "yor"
      end
    end
  end

  test do
    system "#{bin}/yor", "--help"
  end
end
