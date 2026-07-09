class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.45.tar.gz"
  sha256 "ca92c7fb9ad08da4e5569b6eaacf02a3aa94e2b32990aff5acbff00f5f98fe61"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.45"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "326b537845d278a2203935653da6cf83405c48e756b1aed9d1ca9badedea0684"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "f825789aaa895a84ea7d4089b7be4a5dc36536dc5fdc446683dc87071a4b1b43"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
