class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.4.tar.gz"
  sha256 "d76761414b939811d9e844ce7b4decadec6fb026cd6768127f82c119994665c2"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.4"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "56a4e73890054f2ce432140f475c58649aed543dce11e96da31086e14f9da8af"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "e5d84a3ef16eecb8fa7fe22b5fd10c0dad450dacd5c9dd383ca855e6c0748929"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
