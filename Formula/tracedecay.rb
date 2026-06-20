class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.3.tar.gz"
  sha256 "336cbed07739f1469746f4f40ee9d4707d48e64989ca6da9bd7d5996bdb90207"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.3"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "aa8117c7856dfdfb831db039b007b051c598a67b9405189b7ab8e8a0833b9c9e"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "68db0d4288c2a2a0963a60ad2c3f10f05fe196c461a5bd7494b6b6f8dc17c0d7"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
