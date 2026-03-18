{ pkgs, ... }: {
  channel = "stable-24.05"; # স্ক্রিনশট অনুযায়ী লেটেস্ট চ্যানেল

  packages = [
    # আপনার আগের স্ক্রিনশটের প্যাকেজগুলো
    pkgs.unzip
    pkgs.openssh
    pkgs.git
    pkgs.qemu_kvm
    pkgs.sudo
    pkgs.cdrkit
    pkgs.cloud-utils
    pkgs.qemu
    pkgs.screen
    
    # আপনার বিশেষ অনুরোধের প্যাকেজগুলো
    pkgs.nodejs_20        # এন্টি-স্লিপ লুপের জন্য
    pkgs.filebrowser      # মোবাইলে কোড এডিট ও ফাইল দেখার জন্য
    pkgs.wget             # ক্লাউড ইমেজ ডাউনলোডের জন্য
  ];

  idx = {
    # আপনার স্ক্রিনশটের এক্সটেনশন সেটিংস
    extensions = [
      "Dart-Code.flutter"
      "Dart-Code.dart-code"
    ];

    previews = {
      enable = false; #
    };
  };
}
