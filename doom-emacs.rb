class DoomEmacs < Formula
  desc "Installer for Doom Emacs"
  homepage "https://github.com/hlissner/doom-emacs"

  url "file:///dev/null"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  version "1.0"

  depends_on "d12frosted/emacs-plus/emacs-plus" => ["with-no-titlebar", "without-spacemacs-icon", "with-no-frame-refocus", "with-modern-icon"]

  def print_sys(cmd)
    require "open3"
    Open3.popen3(cmd) do |stdin, stdout, stderr, wait_thr|
      while line = stdout.gets
        puts line
      end
    end
  end

  def install
    print_sys("git clone -b develop https://github.com/hlissner/doom-emacs.git ~/.emacs.d")
    print_sys("~/.emacs.d/bin/doom install -y")
    print_sys("~/.emacs.d/bin/doom compile -y")
  end

end
