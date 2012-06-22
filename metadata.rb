maintainer       "Thorsten Fischer"
maintainer_email "thorsten@froschi.org"
license          "Apache 2.0"
description      "Installs/Configures libcairo"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

%w/ubuntu/.each { |os| supports os }

depends          "libdirectfb", ">= 0.0.1"
depends          "libfontconfig", ">= 0.0.1"
depends          "libfreetype", ">= 0.0.1"
depends          "libpixman", ">= 0.0.1"
depends          "libpng", ">= 0.0.1"
depends          "libxcb-render-util", ">= 0.0.1"
depends          "libxcb-render", ">= 0.0.1"
depends          "libxcb-shm", ">= 0.0.1"
depends          "libxcb", ">= 0.0.1"
depends          "libxrender", ">= 0.0.1"
