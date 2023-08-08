evaluate-commands %sh{
    red="rgb:f92672"
    orange="rgb:fd971f"
    yellow="rgb:e6db74"
    green="rgb:a6e22e"
    blue="rgb:66d9ef"
    purple="rgb:ae81ff"
    brown="rgb:75715e"
    light_orange="rgb:ffd569"
    sea_green="rgb:529b2f"

    white="rgb:f8f8f0"
    black="rgb:282828"
    grey="rgb:888888"
    light_white="rgb:f8f8f2"
    light_black="rgb:49483e"
    light_grey="rgb:cccccc"
    highlight="rgb:444444"

    echo "
        # code
        face global module     ${white},default
        face global function   ${blue},default
        face global variable   ${orange},default
        face global value      ${purple},default
        face global type       ${green},default
        face global identifier ${blue},default+i
        face global string     ${yellow},default
        face global error      ${light_orange},default+b
        face global keyword    ${red},default+bi
        face global operator   ${orange},default
        face global attribute  ${light_orange},default
        face global comment    ${grey},default+i
        face global meta       ${light_white},default

        # text
        face global title ${light_white},default+b
        face global bold ${light_white},default+b
        face global italic ${light_white},default+i
        face global mono ${light_grey},default
        face global block ${light_grey},default
        face global link ${white},default+iu

        # kakoune UI
        face global Default ${light_white},${black}
        face global PrimarySelection ${black},${light_white}
        face global SecondarySelection ${light_black},${light_grey}
        face global PrimaryCursor ${light_black},${light_white}
        face global PrimaryCursorEol default,${orange}
        face global SecondaryCursor ${light_white},${grey}
        face global SecondaryCursorEol default,${light_orange}
        face global MatchingChar default,${highlight}
        face global Search default,${grey}
        face global Whitespace default,${grey}
        face global BufferPadding ${grey},default
        face global LineNumbers ${grey},default
        face global LineNumberCursor ${light_white},default+i
        face global MenuForeground ${black},${light_white}+i
        face global MenuBackground ${light_white},rgb:48473d
        face global MenuInfo ${light_white},${grey}
        face global Information ${brown},default
        face global Error ${highlight},rgb:dedede
        face global StatusLine ${light_white},${black}
        face global StatusLineMode ${black},${light_white}
        face global StatusLineInfo ${orange},default
        face global StatusLineValue ${light_grey},default
        face global StatusCursor default,${grey}
        face global Prompt ${black},${light_white}
    "
}
