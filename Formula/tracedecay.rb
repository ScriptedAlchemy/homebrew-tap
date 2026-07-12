class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.61.tar.gz"
  sha256 "527f15cceae4ed1dca67bcd8e44c71a5c37cd614f4f7bc36a34b11385d8b8c1a"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.61"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "4ee0c747f1221b44c791e63f127a4967cc7ee210b112e061fa49b22575a25fc7"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "2a299b36cd6607a051cd1a9bf562841062e5c0cf6cb05b120063f9870c279cd0"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
