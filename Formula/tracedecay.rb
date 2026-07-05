class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.31.tar.gz"
  sha256 "4fcbe3193fdebe3a7ed5c287b58afd82703a42ffcca62d37f2877455e90c80c6"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.31"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "1226dfc556bfd18ef8a0cf5875a243fef49ea743a689972dcf6e2090899493ce"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "c1f7b2732f1eaae86671d23ad985ee3d71167146160803c2c3372da956a8abf9"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
