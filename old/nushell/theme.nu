

let background = "#24273A"
let text = "#CAD3F5"
let text_bold = { fg: $text attr: b}
let rosewater = "#F4DBD6"
let rosewater_bold = { fg: $rosewater attr: b}
let selection = "#5A5F77"
let selectedText = "#CAD3F5"
let activeBorder = "#B6BCF7"
let inactiveBorder = "#6E738D"
let bell = "#EED49F"
let bell_bold = { fg: $bell attr: b}


let theme = {
    # color for nushell primitives
    separator: white
    leading_trailing_space_bg: { attr: n } # no fg, no bg, attr none effectively turns this off
    header: $rosewater_bold
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
    row_index: $rosewater_bold
    record: white
    list: white
    block: white
    hints: dark_gray

    shape_and: $bell_bold
    shape_binary: $bell_bold
    shape_block: blue_bold
    shape_bool: light_cyan
    shape_custom: $rosewater
    shape_datetime: cyan_bold
    shape_directory: $rosewater
    shape_external: $text
    shape_externalarg: $text_bold
    shape_filepath: $rosewater
    shape_flag: $rosewater_bold
    shape_float: $bell_bold
    shape_garbage: { fg: "#FFFFFF" bg: "#FF0000" attr: b}
    shape_globpattern: cyan_bold
    shape_int: $bell_bold
    shape_internalcall: $text_bold
    shape_list: cyan_bold
    shape_literal: blue
    shape_matching_brackets: { attr: u }
    shape_nothing: light_cyan
    shape_operator: yellow
    shape_or: $bell_bold
    shape_pipe: $bell_bold
    shape_range: yellow_bold
    shape_record: cyan_bold
    shape_redirection: $bell_bold
    shape_signature: $rosewater_bold
    shape_string: $text
    shape_string_interpolation: cyan_bold
    shape_table: blue_bold
    shape_variable: purple
}

let-env config = {
    color_config = $theme
}