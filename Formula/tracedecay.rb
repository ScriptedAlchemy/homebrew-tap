class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.28.tar.gz"
  sha256 "49025498e4c74e112ba425aa8f7d003481e7e0fc84086a6156989e5568932e40"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.28"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "2d3db50463a0e4cb3a4aa7f6ca164ba3aca4e0a276ea303cff650c2866736129"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "cffec175191a3a70ce13fa4f29c92d3ae1347285148c76186d04d465f734ee46"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
