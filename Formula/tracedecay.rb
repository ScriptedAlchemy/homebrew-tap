class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.43.tar.gz"
  sha256 "af68e4b93e61c631f524b7bfc3fc5545926b00ec78ad58fb4b894d77b1f72c6d"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.43"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "cedebb35406dda0a0a853d8c1a1721fdb99eb8fb19367ab9c6db0afd1dc3a58d"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "de08387db8ac2bb59a79cd3622640891d62d81469f42d9c4370dac7913b71c46"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
