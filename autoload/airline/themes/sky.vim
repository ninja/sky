" Each theme is contained in its own file and declares variables scoped to the
" file.  These variables represent the possible "modes" that airline can
" detect.  The mode is the return value of mode(), which gets converted to a
" readable string.  The following is a list currently supported modes: normal,
" insert, replace, visual, and inactive.
"
" Each mode can also have overrides.  These are small changes to the mode that
" don't require a completely different look.  "modified" and "paste" are two
" such supported overrides.  These are simply suffixed to the major mode,
" separated by an underscore.  For example, "normal_modified" would be normal
" mode where the current buffer is modified.
"
" The theming algorithm is a 2-pass system where the mode will draw over all
" parts of the statusline, and then the override is applied after.  This means
" it is possible to specify a subset of the theme in overrides, as it will
" simply overwrite the previous colors.  If you want simultaneous overrides,
" then they will need to change different parts of the statusline so they do
" not conflict with each other.
"
" First, let's define an empty dictionary and assign it to the "palette"
" variable. The # is a separator that maps with the directory structure. If
" you get this wrong, Vim will complain loudly.
let g:airline#themes#sky#palette = {}

" First let's define some arrays. The s: is just a VimL thing for scoping the
" variables to the current script. Without this, these variables would be
" declared globally. Now let's declare some colors for normal mode and add it
" to the dictionary.  The array is in the format:
" [ guifg, guibg, ctermfg, ctermbg, opts ]. See "help attr-list" for valid
" values for the "opt" value.

" Normal
let s:N1 = ['#e0e0e0', '#006064', '', '']
let s:N2 = [s:N1[0], '#003133', '', '']
let s:N3 = [s:N1[0], '#00191a', '', '']
" Insert
let s:I1 = [s:N1[0], '#8D6E63', '', '']
let s:I2 = [s:N1[0], s:N2[1], '', '']
let s:I3 = [s:N1[0], s:N3[1], '', '']
" Visual
let s:V1 = [s:N1[0], '#006064', '', '']
let s:V2 = [s:N1[0], s:N2[1], '', '']
let s:V3 = [s:N1[0], s:N3[1], '', '']
" Inactive
let s:IA1 = [s:N1[0], s:N2[1], '', '', '']
let s:IA2 = [s:N1[0], s:N3[1], '', '', '']
let s:IA3 = [s:N1[0], '#000000', '', '', '']
" CtrlP
let s:C1 = [s:N1[0], s:N3[1], '', '', '']
let s:C2 = [s:N1[0], s:N2[1], '', '', '']
let s:C3 = [s:N1[0], s:N1[1], '', '', '']
" Modified
let s:M = '#00BCD4'

let g:airline#themes#sky#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#sky#palette.normal_modified = {'airline_c': [s:M, '', '', '', '']}

let g:airline#themes#sky#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#sky#palette.insert_modified = g:airline#themes#ninja#palette.normal_modified

let g:airline#themes#sky#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#sky#palette.visual_modified = g:airline#themes#ninja#palette.normal_modified

let g:airline#themes#sky#palette.replace = g:airline#themes#ninja#palette.insert
let g:airline#themes#sky#palette.replace_modified = g:airline#themes#ninja#palette.normal_modified

let g:airline#themes#sky#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#sky#palette.inactive_modified = g:airline#themes#ninja#palette.normal_modified

" Accents are used to give parts within a section a slightly different look or
" color. Here we are defining a "red" accent, which is used by the 'readonly'
" part by default. Only the foreground colors are specified, so the background
" colors are automatically extracted from the underlying section colors. What
" this means is that regardless of which section the part is defined in, it
" will be red instead of the section's foreground color. You can also have
" multiple parts with accents within a section.
let g:airline#themes#sky#palette.accents = {'red': ['#f44034', '', '', '']}

" Here we define the color map for ctrlp.  We check for the g:loaded_ctrlp
" variable so that related functionality is loaded iff the user is using
" ctrlp. Note that this is optional, and if you do not define ctrlp colors
" they will be chosen automatically from the existing palette.
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif

let g:airline#themes#sky#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(s:C1, s:C2, s:C3)

