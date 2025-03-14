{pkgs, ...}: {
  # fonts.packages = with pkgs;
  #   [nerd-fonts.jetbrains-mono nerd-fonts.symbols-only nerd-fonts.iosevka-term ipaexfont hachimarupop migmix font-awesome_5 material-design-icons ];
  home-manager.sharedModules = [
    (_: {
      programs.wezterm = {
        enable = true;
        # package = inputs.self.packages.${pkgs.system}.wezterm;
        extraConfig = ''
          local wezterm = require ("wezterm")

          local function font_with_fallback(name, params)
            local names = { name, "Material Symbols Outlined", "Noto Sans CJK JP", "Material Design Icons", "Noto Fonts Emoji"}
            return wezterm.font_with_fallback(names, params)
          end

          local font_name = "JetBrainsMono Nerd Font"

          return {
            font_size = 13.0,

           -- Font config
            font = font_with_fallback(font_name),
            font_rules = {
               {
                 italic = true,
                 font = font_with_fallback(font_name, { italic = true }),
               },
               {
                 italic = false,
                 font = font_with_fallback(font_name, { bold = true }),
               },
               {
                 intensity = "Bold",
                 font = font_with_fallback(font_name, { bold = true }),
               },
             },

            color_scheme = "Catppuccin Mocha",
            warn_about_missing_glyphs = false,
            enable_scroll_bar = false,
            enable_tab_bar = false,
            scrollback_lines = 10000,
            window_padding = {
              left = 3,
              right = 3,
              top = 0,
              bottom = 0,
            },

            -- Enable image rendering
            enable_kitty_graphics = true,
            enable_wayland = true,

            check_for_updates = false,
            default_cursor_style = "SteadyBar",
            automatically_reload_config = true,

            disable_default_key_bindings = true,
            keys = {
              {
                key = "v",
                mods = "CTRL|SHIFT",
                action = wezterm.action({ PasteFrom = "Clipboard" }),
              },
              {
                key = "c",
                mods = "CTRL|SHIFT",
                action = wezterm.action({ CopyTo = "ClipboardAndPrimarySelection" }),
              },
              {
                key = "t",
                mods = "CTRL",
                action = wezterm.action.SpawnCommandInNewWindow({ args = { os.getenv("SHELL"), "-c", "tmux-sessionizer" }}),
                },
              },
                window_close_confirmation = "NeverPrompt",
              }
        '';
      };
    })
  ];
}
