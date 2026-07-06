class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.33.tar.gz"
  sha256 "9466bfd707c4256166ae7a2778ab384bbc0369afe99b13ab9708acccbd6c7462"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.33"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "8294a5cc44e325920b48b554062e50061a79e636e87557e4458a19f6f8052604"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "aa79f649582934542ec282722683db774fa19af551d842999a2813141e4a8e32"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
