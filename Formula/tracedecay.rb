class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.42.tar.gz"
  sha256 "3ae59c3adf4f4c9e11134f87d0e1af3a3e212a46b0bb507464c89aa0ca066b42"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.42"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "ae1e521059e2f812e566cc4a38aaf6e5b9863efb2018e0bd826cea11807ab389"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "d08ceb738205a9a473bd4566f45aa8b715d8db5f006af46a11f1060f54e43ede"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
