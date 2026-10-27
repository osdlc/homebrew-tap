class Tradecraft < Formula
  desc "Publish a vault of markdown skill notes to coding-agent tools"
  homepage "https://github.com/osdlc/osdlc/tree/main/packages/rust/tradecraft"
  url "https://github.com/osdlc/osdlc/archive/refs/tags/tradecraft/v0.3.5.tar.gz"
  sha256 "d2983f4cc8a6ece44054fafa6a8da2134d5e752b29560e267cb5e0bf78f95814"
  license any_of: ["MIT", "Apache-2.0"]

  livecheck do
    url :stable
    regex(%r{^tradecraft/v?(\d+(?:\.\d+)+)$}i)
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "packages/rust/tradecraft")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tradecraft --version")
  end
end
