class Orbital < Formula
  desc "Covalent ops tooling"
  homepage "https://github.com/covalenthq/orbital"
  url "https://github.com/covalenthq/orbital/archive/refs/tags/v1.0.1.zip"
  sha256 "682de961551e956fb03be6bd414c32238a1742a87365f2b692c0f08c96ef0da4"
  license "MIT"
  revision 1

  uses_from_macos "ruby", since: :catalina

  resource "activesupport"
    url "https://rubygems.org/gems/activesupport-6.1.4.gem"
    sha256 "b37564f4fc3bc66f3f98d3032b8bb8cbdbd23ba0f7c02648287048463cf70f4f"
  end

  resource "base32-multi"
    url "https://rubygems.org/gems/base32-multi-0.1.1.gem"
    sha256 "1a061d0bfd2179a1d79dec07a31a8caa9df22862a59dfbaa3a40c93d96fe836a"
  end

  resource "concurrent-ruby"
    url "https://rubygems.org/gems/concurrent-ruby-1.1.9.gem"
    sha256 "0ec0846d991c38f355b4228ad8ea77aa69c3fdaa320cd574dafedc10c4688a5b"
  end

  resource "dry-configurable"
    url "https://rubygems.org/gems/dry-configurable-0.12.1.gem"
    sha256 "c35243737768a39b7038d44a9cc72afc3372927496405cd0f44b3e2dca08b9bb"
  end

  resource "dry-container"
    url "https://rubygems.org/gems/dry-container-0.8.0.gem"
    sha256 "2f12953d057200dcfa7b0b854dc3cbabf4ed8fdf07d799da7c307eaacf7c84b9"
  end

  resource "dry-core"
    url "https://rubygems.org/gems/dry-core-0.6.0.gem"
    sha256 "ae22545843ecb41dc14d78c304233de143eaa356835f6bdcb734260bb8a0fe9d"
  end

  resource "dry-inflector"
    url "https://rubygems.org/gems/dry-inflector-0.2.0.gem"
    sha256 "c7cf29c3dc9d961c115aac873ac39a4ff6988fae7f7871c473a9694c1f6fb39e"
  end

  resource "dry-logic"
    url "https://rubygems.org/gems/dry-logic-1.2.0.gem"
    sha256 "9572246f95286c52e3125f1ca03875c2fd6a5ab3e2e6f7834eb8a6f45496b1ee"
  end

  resource "dry-struct"
    url "https://rubygems.org/gems/dry-struct-1.4.0.gem"
    sha256 "63c1ac6c11ee70a893212d84fd45d167588943bf00c09bbbe5dddb5a2a0f4cf3"
  end

  resource "dry-types"
    url "https://rubygems.org/gems/dry-types-1.5.1.gem"
    sha256 "6dd3009d1f91a44c80f0e019cc5372c672610848913f2c10cab47f6ad2d060bf"
  end

  resource "excon"
    url "https://rubygems.org/gems/excon-0.82.0.gem"
    sha256 "6a1641e9b5725ee9a973869458a7d740ae72e3f60d976eb0e7a2341dabf6a984"
  end

  resource "hashdiff"
    url "https://rubygems.org/gems/hashdiff-1.0.1.gem"
    sha256 "2cd4d04f5080314ecc8403c4e2e00dbaa282dff395e2d031bc16c8d501bdd6db"
  end

  resource "i18n"
    url "https://rubygems.org/gems/i18n-1.8.10.gem"
    sha256 "ca24e52fdd6ad7af419241eef8c41e65ef4e3499c6b252df13f697919eb24e3c"
  end

  resource "ice_nine"
    url "https://rubygems.org/gems/ice_nine-0.11.2.gem"
    sha256 "5d506a7d2723d5592dc121b9928e4931742730131f22a1a37649df1c1e2e63db"
  end

  resource "jsonpath"
    url "https://rubygems.org/gems/jsonpath-1.1.0.gem"
    sha256 "b8556b3df4090636dbf287ac9e42c579fc135d8d10e60017d8a65b7a41d6128a"
  end

  resource "kubesealr"
    url "https://rubygems.org/gems/kubesealr-0.1.2.gem"
    sha256 "cf78dfa2db7a8656b688d96fa3aa14dc51dfc514f73f2eb5f1de07ffeaaaf48b"
  end

  resource "kustomizer"
    url "https://rubygems.org/gems/kustomizer-0.1.15.gem"
    sha256 "33c1b6b7ba2bf892936647af8e36bc763732607338b3573a763ef025fcf4bd6d"
  end

  resource "minitest"
    url "https://rubygems.org/gems/minitest-5.14.4.gem"
    sha256 "f4716634d71b3ffb627cd63ba4f6f0f77c7a3f17353b1bdf52c8a7f2e0e4e7a7"
  end

  resource "multi_json"
    url "https://rubygems.org/gems/multi_json-1.15.0.gem"
    sha256 "1fd04138b6e4a90017e8d1b804c039031399866ff3fbabb7822aea367c78615d"
  end

  resource "openssl-oaep"
    url "https://rubygems.org/gems/openssl-oaep-0.1.0.gem"
    sha256 "033d1239f4305f616dddb503fb1d63a6d89be736c67d84ced805b001ed19142d"
  end

  resource "paint"
    url "https://rubygems.org/gems/paint-2.2.1.gem"
    sha256 "fd2c46f7fd1a1389d447e20f0ba2e8624792a7b64f827c146ef459ac5adfd005"
  end

  resource "pastel"
    url "https://rubygems.org/gems/pastel-0.8.0.gem"
    sha256 "481da9fb7d2f6e6b1a08faf11fa10363172dc40fd47848f096ae21209f805a75"
  end

  resource "recursive-open-struct"
    url "https://rubygems.org/gems/recursive-open-struct-1.1.3.gem"
    sha256 "a3538a72552fcebcd0ada657bdff313641a4a5fbc482c08cfb9a65acb1c9de5a"
  end

  resource "strings"
    url "https://rubygems.org/gems/strings-0.2.1.gem"
    sha256 "933293b3c95cf85b81eb44b3cf673e3087661ba739bbadfeadf442083158d6fb"
  end

  resource "strings-ansi"
    url "https://rubygems.org/gems/strings-ansi-0.2.0.gem"
    sha256 "90262d760ea4a94cc2ae8d58205277a343409c288cbe7c29416b1826bd511c88"
  end

  resource "thor"
    url "https://rubygems.org/gems/thor-1.1.0.gem"
    sha256 "cacae12a3761be4ccbe63be19261352b108f86c721c37d87664328efeaa6d0a3"
  end

  resource "tty-color"
    url "https://rubygems.org/gems/tty-color-0.6.0.gem"
    sha256 "6f9c37ca3a4e2367fb2e6d09722762647d6f455c111f05b59f35730eeb24332a"
  end

  resource "tty-command"
    url "https://rubygems.org/gems/tty-command-0.10.1.gem"
    sha256 "0c6c471fcb932d55518734eb4e2e07e9efdd2918713cc39bb7393ba862471192"
  end

  resource "tty-cursor"
    url "https://rubygems.org/gems/tty-cursor-0.7.1.gem"
    sha256 "79534185e6a777888d88628b14b6a1fdf5154a603f285f80b1753e1908e0bf48"
  end

  resource "tty-link"
    url "https://rubygems.org/gems/tty-link-0.1.1.gem"
    sha256 "c81fe20bd69f0ec704e5d1e5acf92c0fbd18b7ae1d474d9ebc280575699f0157"
  end

  resource "tty-platform"
    url "https://rubygems.org/gems/tty-platform-0.3.0.gem"
    sha256 "e23937b100e84a1bf9ce32352b4c04d526da1c2510668ce1f27f8ae79142050a"
  end

  resource "tty-prompt"
    url "https://rubygems.org/gems/tty-prompt-0.23.1.gem"
    sha256 "fcdbce905238993f27eecfdf67597a636bc839d92192f6a0eef22b8166449ec8"
  end

  resource "tty-reader"
    url "https://rubygems.org/gems/tty-reader-0.9.0.gem"
    sha256 "c62972c985c0b1566f0e56743b6a7882f979d3dc32ff491ed490a076f899c2b1"
  end

  resource "tty-screen"
    url "https://rubygems.org/gems/tty-screen-0.8.1.gem"
    sha256 "6508657c38f32bdca64880abe201ce237d80c94146e1f9b911cba3c7823659a2"
  end

  resource "tty-table"
    url "https://rubygems.org/gems/tty-table-0.12.0.gem"
    sha256 "fdc27a4750835c1a16efe19a0b857e3ced3652cc7aceafe6dca94908965b9939"
  end

  resource "tty-which"
    url "https://rubygems.org/gems/tty-which-0.4.2.gem"
    sha256 "0ac45f416555041882c632602aeb733379fec08b08a3123d92e78283741823ce"
  end

  resource "tzinfo"
    url "https://rubygems.org/gems/tzinfo-2.0.4.gem"
    sha256 "9fd0906c2409f729e90c78695e1001fa28f2fa72faa5ad2f6074c3e44e2f1783"
  end

  resource "unicode-display_width"
    url "https://rubygems.org/gems/unicode-display_width-2.0.0.gem"
    sha256 "55ec39f2a0bb8c8c3f0480200b28edbedd70473c27b84c5359531a89985d34ae"
  end

  resource "unicode_utils"
    url "https://rubygems.org/gems/unicode_utils-1.4.0.gem"
    sha256 "b922d0cf2313b6b7136ada6645ce7154ffc86418ca07d53b058efe9eb72f2a40"
  end

  resource "wisper"
    url "https://rubygems.org/gems/wisper-2.0.1.gem"
    sha256 "ce17bc5c3a166f241a2e6613848b025c8146fce2defba505920c1d1f3f88fae6"
  end

  resource "yajl-ruby"
    url "https://rubygems.org/gems/yajl-ruby-1.4.1.gem"
    sha256 "6e32e6e681c2861e99e7389ebcca70d56cb9357b223f09fb0857e2444ee1609b"
  end

  resource "yaml-safe_load_stream2"
    url "https://rubygems.org/gems/yaml-safe_load_stream2-0.1.1.gem"
    sha256 "07bd6c6918596e0fbd32fb2b494ad3114e5b564c2b8b5844e25e982c545797f4"
  end

  resource "zeitwerk"
    url "https://rubygems.org/gems/zeitwerk-2.4.2.gem"
    sha256 "f4d6279b0ef0cb35c9e1bddbcecd6b148df82f1cf7b8023ac03d6625f567869c"
  end

  def install
    ENV["GEM_HOME"] = libexec
    resources.each do |r|
      system "gem", "install", r.cached_download, "--ignore-dependencies",
             "--no-document", "--install-dir", libexec
    end
    system "gem", "build", "orbital.gemspec"
    system "gem", "install", "orbital-#{version}.gem"
    bin.install Dir[libexec/"bin/orbital"]
    bin.env_script_all_files(libexec/"bin", GEM_HOME: ENV["GEM_HOME"])
  end
end
