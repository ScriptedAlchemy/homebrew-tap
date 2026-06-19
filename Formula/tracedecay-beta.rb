class TracedecayBeta < Formula
  desc "Code intelligence tool (beta channel)"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.3-beta.1.tar.gz"
  sha256 "e91bf333e4a38adbf2bbc963af852917b9215024bbd5b6406aaf3d5f96b6c4dc"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.3-beta.1"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "d59e14db4f5e81231e843e80e988ec3f1588d05fb6a76f93426351588063902e"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "e6ccdd7c3bf177112f8458a754d58955b31fb1743169fe2ca811949dd2ee961a"
  end

  depends_on "rust" => :build

  conflicts_with "tracedecay", because: "both install a 'tracedecay' binary"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
