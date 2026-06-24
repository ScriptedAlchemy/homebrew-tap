class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.11.tar.gz"
  sha256 "9acb21ce98102fe4c0eb121d85ba21354a9351993d96bf59a43ca4bb371e5681"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.11"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "ac59262ac310546bb7e6a3a0d3603a435e7047f21836eccc3db95d15601b8f97"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "7c9b1410a2ccf0d1a29938cbb1fe202ff6e0e81b3509c556c5dc6eae69795984"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
