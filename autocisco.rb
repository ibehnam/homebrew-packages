# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula

class Autocisco < Formula
  desc "Automatically connects to University VPN (currently CMU's Cisco VPN) using your credentials"
  homepage "https://github.com/ibehnam/AutoCisco/releases/download/stable/autocisco-mac.tar.gz"
  url "https://aplaceofmind.notion.site/AutoCisco-My-First-Project-in-Rust-c40c831d5eb0447ea9246c0514558195?pvs=74"
  sha256 "d73d4dda90715b7bb2bd97cd7e906290ab9cfbfe89f7cec37ab73b3b9f5be59f"
  version "0.1.2"

  def install
    bin.install "autocisco"
  end
end
