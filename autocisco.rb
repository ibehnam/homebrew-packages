# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula

class Autocisco < Formula
  desc "Automatically connects to University VPN (currently CMU's Cisco VPN) using your credentials"
  homepage "https://aplaceofmind.notion.site/AutoCisco-My-First-Project-in-Rust-c40c831d5eb0447ea9246c0514558195?pvs=74"
  url "https://github.com/ibehnam/AutoCisco/releases/download/stable-0.1.3/autocisco-mac.tar.gz"
  sha256 "1567e37ccb74ddb8b948ed8d132cff9bcd2f1d7094b3d72c4e3bfd140ae8f590"
  version "0.1.3"

  def install
    bin.install "autocisco"
  end
end
