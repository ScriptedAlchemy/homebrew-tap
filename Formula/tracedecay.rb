class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.67.tar.gz"
  sha256 "cf2cf1857c9df6bcf32f361d4292e832c2db9d12196e42e84195552dd09d979d"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.67"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "7d7f8841032329197a6ba097653e27bed5ef8ae478273d1307ede698d1d96c2a"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "52550a6db1124f9f9042ba6d59ac080d081c12bba102e0300400d480c69e065d"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
