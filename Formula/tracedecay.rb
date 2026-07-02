class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.21.tar.gz"
  sha256 "169d434cb03bf3cb0e5cc54e2bda0c5502f4906f31dbe5d934a908e16f38d2ba"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.21"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "31101b202829ae49a9b2757b5080842ead758bbf5208f9ad79b730c0cb17efcc"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "da56ef5962890531ebb955031f3e45e50ff9fb89bb29e8cd18507f6add65be45"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
