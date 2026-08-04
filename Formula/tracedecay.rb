class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.73.tar.gz"
  sha256 "e2a3b943d9215fde15a45a2d2ff0fc0e7c0d7a7e55907096238b5eb16ac8d36d"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.73"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "e7aa0eb575027fd8c687c77e64413906d7465277e8c2774b8e8bafa08d3d3be4"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "b5406ab47d654fa7dfb0453f74aa5d73bcec8843aece2e4df00195681be51042"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
