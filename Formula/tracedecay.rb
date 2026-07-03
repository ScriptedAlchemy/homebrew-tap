class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.25.tar.gz"
  sha256 "70dfaeab97c46ae9bd28a7487419740377cec0d3fd4a34da354b646256cc6a64"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.25"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "07da98477a30f468b7a5a4ef1b36c8488d4bee5d4a2b3db85a9f15829f5515da"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "61a125bb0eadb5119fd10c3b36c1c8db6214a066d6ad6420c715505ced30a043"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
