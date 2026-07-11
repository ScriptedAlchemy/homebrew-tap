class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.55.tar.gz"
  sha256 "f396863f9bf7daf09c0a91098fbf695152357b8621335cdccb908a884c154daa"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.55"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "0ce66f22ccdaaf1ca7ad86f14893d96fe2f70892ec5f8ab096ff8aec5a360bd8"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "2b6d725af8a12848741238c5e794dd469e5018fb922ae510d041322270ada379"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
