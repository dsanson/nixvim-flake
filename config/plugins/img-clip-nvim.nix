{
  plugins.img-clip = {
    enable = true;
    settings =  {
      default = {
        dir_path = "assets";
        file_name = "%y-%m-%d-%h-%m-%s";
        relative_to_current_file = true;
        template = "$file_path";
        use_absolute_path = false;
        download_images = true;
        copy_images = true;
      };
    };
  };
}
