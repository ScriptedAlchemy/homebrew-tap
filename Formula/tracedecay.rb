class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.37.tar.gz"
  sha256 "9b1aa40e3ce32ac990f5ccc58e2b9904e242b60352d1370897f56faa2ff0b70d"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.37"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "cf0b1fb256af499ec9be35f82fa681f2eec81c8200ce79f3d874f542a8a8e641"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "2f72ee47a04ee1c09ee5aeb7ebb2d22d66b612e2e7df7508e333ca1852aaef7a"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
