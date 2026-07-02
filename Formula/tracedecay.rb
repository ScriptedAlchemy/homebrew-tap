class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.22.tar.gz"
  sha256 "515ce65d5589143587a69f9d8e16a0f798a572eb734e25335470ea878b174bee"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.22"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "de2ff236bf8af9a062862767fc75f32a96f691d420277da5443db146fd711a28"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "9ac7d4b2b24fd32b16d2b4c54d02bac073e971d053835d61f6407416eb64a712"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
