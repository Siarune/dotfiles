# For more information on themes, see
# https://www.nushell.sh/book/coloring_and_theming.html

# Pallette
# https://github.com/catppuccin/catppuccin/blob/main/docs/style-guide.md
let background = "#24273A"
let surface = "#45475A"
let text = "#CAD3F5"
let text_bold = { fg: $text attr: b}
let url = "#F4DBD6"
let url_bold = { fg: $url attr: b}
let selection = "#5A5F77"
let selectedText = "#CAD3F5"
let cursor = "#F5E0DC"
let cursorTest = "#11111B"
let activeBorder = "#B6BCF7"
let inactiveBorder = "#6E738D"
let bell = "#EED49F"
let bell_bold = { fg: $bell attr: b}
let lavender = "#B4BEFE"
let mauve = "#CBA6F7"
let sapphire = "#74C7EC"
let pastelRed = "#F38BA8"
let pastelGreen = "#A6E3A1"
let pastelYellow = "#F9E2AF"
let pastelBlue = "#89B4FA"
let pastelPink = "#F5C2E7"
let pastelTeal = "#94E2D5"
let darkGray = "#45475A"
let medGray = "#A6ADC8"


let theme = {
    # color for nushell primitives
    separator: white
    leading_trailing_space_bg: { attr: n } # no fg, no bg, attr none effectively turns this off
    header: $url_bold
    empty: blue
    # Closures can be used to choose colors for specific values.
    # The value (in this case, a bool) is piped into the closure.
    bool: { if $in { 'light_cyan' } else { 'light_gray' } }
    int: white
    filesize: {|e|
      if $e == 0b {
        'white'
      } else if $e < 1mb {
        'cyan'
      } else { 'blue' }
    }
    duration: white
    date: { (date now) - $in |
      if $in < 1hr {
        '#e61919'
      } else if $in < 6hr {
        '#e68019'
      } else if $in < 1day {
        '#e5e619'
      } else if $in < 3day {
        '#80e619'
      } else if $in < 1wk {
        '#19e619'
      } else if $in < 6wk {
        '#19e5e6'
      } else if $in < 52wk {
        '#197fe6'
      } else { 'light_gray' }
    }
    range: white
    float: white
    string: white
    nothing: white
    binary: white
    cellpath: white
    row_index: $url_bold
    record: white
    list: white
    block: white
    hints: $surface

    shape_and: $bell_bold
    shape_binary: $bell_bold
    shape_block: blue_bold
    shape_bool: light_cyan
    shape_custom: $url
    shape_datetime: $bell_bold
    shape_directory: $url
    shape_external: $text
    shape_externalarg: $text_bold
    shape_filepath: $url
    shape_flag: $url_bold
    shape_float: $bell_bold
    shape_garbage: { fg: "#FFFFFF" bg: "#FF0000" attr: b}
    shape_globpattern: $bell_bold
    shape_int: $bell_bold
    shape_internalcall: $text_bold
    shape_list: $bell_bold
    shape_literal: blue
    shape_matching_brackets: { attr: u }
    shape_nothing: light_cyan
    shape_operator: yellow
    shape_or: $bell_bold
    shape_pipe: $bell_bold
    shape_range: yellow_bold
    shape_record: $bell_bold
    shape_redirection: $bell_bold
    shape_signature: $url_bold
    shape_string: $text
    shape_string_interpolation: $bell_bold
    shape_table: blue_bold
    shape_variable: purple
}

let pastel = {
    # color for nushell primitives
    separator: $text
    leading_trailing_space_bg: { attr: n } # no fg, no bg, attr none effectively turns this off
    header: green_bold
    empty: $pastelBlue
    # Closures can be used to choose colors for specific values.
    # The value (in this case, a bool) is piped into the closure.
    bool: { if $in { 'light_cyan' } else { 'light_gray' } }
    int: $text
    filesize: {|e|
      if $e == 0b {
        '$text'
      } else if $e < 1mb {
        '$sapphire'
      } else { '$pastelBlue' }
    }
    duration: $text
    date: { (date now) - $in |
      if $in < 1hr {
        '#F38BA8'
      } else if $in < 6hr {
        '#FAB387'
      } else if $in < 1day {
        '#F9E2AF'
      } else if $in < 3day {
        '#80e619'
      } else if $in < 1wk {
        '#93E1D4'
      } else if $in < 6wk {
        '#89B4FA'
      } else if $in < 52wk {
        '#B4BEFE'
      } else { '#A6ADC8' }
    }
    range: $text
    float: $text
    string: $text
    nothing: $text
    binary: $text
    cellpath: $text
    row_index: { fg: pastelGreen attr: b}
    record: $text
    list: $text
    block: $text
    hints: $darkGray

    shape_and: { fg: $mauve attr: b}
    shape_binary: { fg: $mauve attr: b}
    shape_block: { fg: $pastelBlue attr: b}
    shape_bool: { fg: $sapphire attr: d}
    shape_custom: $pastelGreen
    shape_datetime: { fg: $sapphire attr: b}
    shape_directory: $sapphire
    shape_external: $sapphire
    shape_externalarg: { fg: pastelGreen attr: b}
    shape_filepath: $sapphire
    shape_flag: { fg: $pastelBlue attr: b}
    shape_float: { fg: $mauve attr: b}
    # shapes are used to change the cli syntax highlighting
    shape_garbage: { fg: "#CAD3F5" bg: "#F38BA8" attr: b}
    shape_globpattern: { fg: $sapphire attr: b}
    shape_int: { fg: $mauve attr: b}
    shape_internalcall: { fg: $sapphire attr: b}
    shape_list: { fg: $sapphire attr: b}
    shape_literal: $pastelBlue
    shape_matching_brackets: { attr: u }
    shape_nothing: { fg: $sapphire attr: d}
    shape_operator: $pastelYellow
    shape_or: { fg: $mauve attr: b}
    shape_pipe: { fg: $mauve attr: b}
    shape_range: yellow_bold
    shape_record: { fg: $sapphire attr: b}
    shape_redirection: { fg: $mauve attr: b}
    shape_signature: { fg: pastelGreen attr: b}
    shape_string: $pastelGreen
    shape_string_interpolation: cyan_bold
    shape_table: { fg: $pastelBlue attr: b}
    shape_variable: $mauve
}

# External completer example
# let carapace = {|spans|
#     carapace $spans.0 nushell $spans | from json
# }


# The default config record. This is where much of your global configuration is setup.
let-env config = {
  ls: {
    use_ls_colors: true # use the LS_COLORS environment variable to colorize output
    clickable_links: true # enable or disable clickable links. Your terminal has to support links.
  }
  rm: {
    always_trash: true # always act as if -t was given. Can be overridden with -p
  }
  cd: {
    abbreviations: true # allows `cd s/o/f` to expand to `cd some/other/folder`
  }
  table: {
    mode: rounded # basic, compact, compact_double, light, thin, with_love, rounded, reinforced, heavy, none, other
    index_mode: always # "always" show indexes, "never" show indexes, "auto" = show indexes when a table has "index" column
    trim: {
      methodology: wrapping # wrapping or truncating
      wrapping_try_keep_words: true # A strategy used by the 'wrapping' methodology
      truncating_suffix: "..." # A suffix used by the 'truncating' methodology
    }
  }

  explore: {
    help_banner: true
    exit_esc: true

    command_bar_text: '#C4C9C6'
    # command_bar: {fg: '#C4C9C6' bg: '#223311' }

    status_bar_background: {fg: '#1D1F21' bg: '#C4C9C6' }
    # status_bar_text: {fg: '#C4C9C6' bg: '#223311' }

    highlight: {bg: '$pastelYellow' fg: 'black' }

    status: {
      # warn: {bg: '$pastelYellow', fg: '$pastelBlue'}
      # error: {bg: '$pastelYellow', fg: '$pastelBlue'}
      # info: {bg: '$pastelYellow', fg: '$pastelBlue'}
    }

    try: {
      # border_color: 'pastelRed'
      # highlighted_color: '$pastelBlue'

      # reactive: false
    }

    table: {
      split_line: '#404040'

      cursor: true

      line_index: true
      line_shift: true
      line_head_top: true
      line_head_bottom: true

      show_head: true
      show_index: true

      # selected_cell: {fg: 'white', bg: '#777777'}
      # selected_row: {fg: '$pastelYellow', bg: '#C1C2A3'}
      # selected_column: $pastelBlue

      # padding_column_right: 2
      # padding_column_left: 2

      # padding_index_left: 2
      # padding_index_right: 1
    }

    config: {
      cursor_color: {bg: '$pastelYellow' fg: 'black' }

      # border_color: white
      # list_color: $pastelGreen
    }
  }

  history: {
    max_size: 10000 # Session has to be reloaded for this to take effect
    sync_on_enter: true # Enable to share history between multiple sessions, else you have to close the session to write history to file
    file_format: "sqlite" # "sqlite" or "plaintext"
  }
  completions: {
    case_sensitive: true # set to true to enable case-sensitive completions
    quick: true  # set this to false to prevent auto-selecting completions when only one remains
    partial: true  # set this to false to prevent partial filling of the prompt
    algorithm: "fuzzy"  # prefix or fuzzy
    external: {
      enable: true # set to false to prevent nushell looking into $env.PATH to find more suggestions, `false` recommended for WSL users as this look up my be very slow
      max_results: 100 # setting it lower can improve completion performance at the cost of omitting some options
      completer: null # check 'carapace_completer' above as an example
    }
  }
  filesize: {
    metric: true # true => KB, MB, GB (ISO standard), false => KiB, MiB, GiB (Windows standard)
    format: "auto" # b, kb, kib, mb, mib, gb, gib, tb, tib, pb, pib, eb, eib, zb, zib, auto
  }
  # cursor_shape: {
  #   emacs: line # block, underscore, line (line is the default)
  #   vi_insert: block # block, underscore, line (block is the default)
  #   vi_normal: underscore # block, underscore, line  (underscore is the default)
  # }
  color_config: $pastel
  use_grid_icons: true
  footer_mode: "25" # always, never, number_of_rows, auto
  float_precision: 2
  # buffer_editor: "emacs" # command that will be used to edit the current line buffer with ctrl+o, if unset fallback to $env.EDITOR and $env.VISUAL
  use_ansi_coloring: true
  edit_mode: vi # emacs, vi
  shell_integration: true # enables terminal markers and a workaround to arrow keys stop working issue
  show_banner: false # true or false to enable or disable the banner
  render_right_prompt_on_last_line: false # true or false to enable or disable right prompt to be rendered on last line of the prompt.

  hooks: {
    pre_prompt: [{
      null  # replace with source code to run before the prompt is shown
    }]
    pre_execution: [{
      null  # replace with source code to run before the repl input is run
    }]
    env_change: {
      PWD: [{|before, after|
        null  # replace with source code to run if the PWD environment is different since the last repl input
      }]
    }
    display_output: {
      if (term size).columns >= 100 { table -e } else { table }
    }
  }
  menus: [
      # Configuration for default nushell menus
      # Note the lack of source parameter
      {
        name: completion_menu
        only_buffer_difference: false
        marker: "| "
        type: {
            layout: columnar
            columns: 4
            col_width: 20   # Optional value. If missing all the screen width is used to calculate column width
            col_padding: 2
        }
        style: {
            text: $url
            selected_text: { fg: $url attr: r}
            description_text: $bell
        }
      }
      {
        name: history_menu
        only_buffer_difference: true
        marker: "? "
        type: {
            layout: list
            page_size: 10
        }
        style: {
            text: $pastelGreen
            selected_text: green_reverse
            description_text: $pastelYellow
        }
      }
      {
        name: help_menu
        only_buffer_difference: true
        marker: "? "
        type: {
            layout: description
            columns: 4
            col_width: 20   # Optional value. If missing all the screen width is used to calculate column width
            col_padding: 2
            selection_rows: 4
            description_rows: 10
        }
        style: {
            text: $pastelGreen
            selected_text: green_reverse
            description_text: $pastelYellow
        }
      }
      # Example of extra menus created using a nushell source
      # Use the source field to create a list of records that populates
      # the menu
      {
        name: commands_menu
        only_buffer_difference: false
        marker: "# "
        type: {
            layout: columnar
            columns: 4
            col_width: 20
            col_padding: 2
        }
        style: {
            text: $pastelGreen
            selected_text: green_reverse
            description_text: $pastelYellow
        }
        source: { |buffer, position|
            $nu.scope.commands
            | where name =~ $buffer
            | each { |it| {value: $it.name description: $it.usage} }
        }
      }
      {
        name: vars_menu
        only_buffer_difference: true
        marker: "# "
        type: {
            layout: list
            page_size: 10
        }
        style: {
            text: $pastelGreen
            selected_text: green_reverse
            description_text: $pastelYellow
        }
        source: { |buffer, position|
            $nu.scope.vars
            | where name =~ $buffer
            | sort-by name
            | each { |it| {value: $it.name description: $it.type} }
        }
      }
      {
        name: commands_with_description
        only_buffer_difference: true
        marker: "# "
        type: {
            layout: description
            columns: 4
            col_width: 20
            col_padding: 2
            selection_rows: 4
            description_rows: 10
        }
        style: {
            text: $pastelGreen
            selected_text: green_reverse
            description_text: $pastelYellow
        }
        source: { |buffer, position|
            $nu.scope.commands
            | where name =~ $buffer
            | each { |it| {value: $it.name description: $it.usage} }
        }
      }
  ]
  keybindings: [
    {
      name: completion_menu
      modifier: none
      keycode: tab
      mode: [emacs vi_normal vi_insert]
      event: {
        until: [
          { send: menu name: completion_menu }
          { send: menunext }
        ]
      }
    }
    {
      name: completion_previous
      modifier: shift
      keycode: backtab
      mode: [emacs, vi_normal, vi_insert] # Note: You can add the same keybinding to all modes by using a list
      event: { send: menuprevious }
    }
    {
      name: history_menu
      modifier: control
      keycode: char_r
      mode: emacs
      event: { send: menu name: history_menu }
    }
    {
      name: next_page
      modifier: control
      keycode: char_x
      mode: emacs
      event: { send: menupagenext }
    }
    {
      name: undo_or_previous_page
      modifier: control
      keycode: char_z
      mode: emacs
      event: {
        until: [
          { send: menupageprevious }
          { edit: undo }
        ]
       }
    }
    {
      name: yank
      modifier: control
      keycode: char_y
      mode: emacs
      event: {
        until: [
          {edit: pastecutbufferafter}
        ]
      }
    }
    {
      name: unix-line-discard
      modifier: control
      keycode: char_u
      mode: [emacs, vi_normal, vi_insert]
      event: {
        until: [
          {edit: cutfromlinestart}
        ]
      }
    }
    {
      name: kill-line
      modifier: control
      keycode: char_k
      mode: [emacs, vi_normal, vi_insert]
      event: {
        until: [
          {edit: cuttolineend}
        ]
      }
    }
    # Keybindings used to trigger the user defined menus
    {
      name: commands_menu
      modifier: control
      keycode: char_t
      mode: [emacs, vi_normal, vi_insert]
      event: { send: menu name: commands_menu }
    }
    {
      name: vars_menu
      modifier: alt
      keycode: char_o
      mode: [emacs, vi_normal, vi_insert]
      event: { send: menu name: vars_menu }
    }
    {
      name: commands_with_description
      modifier: control
      keycode: char_s
      mode: [emacs, vi_normal, vi_insert]
      event: { send: menu name: commands_with_description }
    }
  ]
}

#Prompt styling
oh-my-posh init nu
source ~/.config/themes/oh-my-posh.nu

#Completions
source ~/.config/nushell/completions/blitz.nu
#source ~/.config/nushell/completions/bun.nu
source ~/.config/nushell/completions/git.nu
# source ~/.config/nushell/completions/yarn.nu

#Tools
source ~/.config/nushell/extensions/zoxide.nu
source ~/.config/nushell/extensions/carapace.nu
source ~/.config/nushell/nupac/nu-pkgs.nu

#Aliases
source ~/.config/nushell/aliases.nu

[[(sys).host.sessions.name.2] [(sys).host.hostname] [(sys).host.name] [(sys).host.kernel_version] [(sys).host.uptime]] | flatten | table
