{ ... }:

{ 
  extraConfigLua = ''
    vim.fn.digraph_setlist({
      -- arabic transliteration
      {"'''", "ʾ"}, -- hamzah
      {"``", "ʿ"}, --ʿayn
      {".H", "Ḥ"}, -- hāʾ
      {".h", "ḥ"}, 
      {".D", "Ḍ"}, -- ḍād
      {".d", "ḍ"},
      {".S", "Ṣ"}, -- ṣād
      {".s", "ṣ"},
      {".T", "Ṭ"}, -- ṭāʾ
      {".t", "ṭ"}, 
      {".Z", "Ẓ"}, -- ẓāʾ
      {".z", "ẓ"},
      -- logic symbols
      {"ts", "⊢"}, -- single turnstyle
      {"bx", "▢"}, -- box 
      {"ci", "◯"}, -- circle
      {"tr", "△"}, -- triangle
    })
  '';
}
