include_recipe "libfontconfig"
include_recipe "libfreetype"
include_recipe "libpixman"
include_recipe "libpng"
include_recipe "libxcb-render"
include_recipe "libxcb"
include_recipe "libxrender"

packages = Array.new

case node[:lsb][:codename]
when "lucid"
  include_recipe "libdirectfb"
  include_recipe "libxcb-render-util"

  packages |= %w/
    libcairo2
  /
when "precise"
  include_recipe "libxcb-shm"

  packages |= %w/
    libcairo2
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
