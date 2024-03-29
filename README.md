<!--markdownlint-disable MD033 MD034-->

# Snippets-UltiSnips or UltiSnippets - my snippets for UltiSnips

Here are my snippets to make programing and editing different files with Vim
quicker. They are designed for
[UltiSnips plugin by SirVer](https://github.com/SirVer/UltiSnips).

Snippets are supported with help files. Only Russian help files are currently
supplied, maybe later I will write English variant. You can help with
translation if You want.

## What kind of files supported

### CSS

Snippets for css files are very similar to emmet css snippets, but with few
differences. I made them because *emmet-vim* plugin is not so practical for CSS
files for me.

If You are familiar with **emmet-vim** or Emmet plugin for another editor or
IDE, folowing features are differs this UltiSnips-based snippets from Emmet.

Features for editing css:

- Optional values are always visually selected - so you can easily change them
  and move between them with movement trigger keys (<kbd>ctrl-j</kbd> and
  <kbd>ctrl-k</kbd> by default).
- If you try to expand unexistant abbreviation - it just will not expand and
  entered symbols will remain on the string.
- You can enter property value only after a colon (<kbd>:</kbd>), so `mt1em`
  will not expand, while `mt:1em` will.
- You can add any value next to CSS property name abbreviation - there is no
  validation here. For example, if you have entered `c:white` and pressed
  Your expand trigger key (<kbd>Tab</kbd> by default), this will not disappear
  and will expand to `color: white`; `c:rgb(100,150,200)` will also expand
  properly, you are not forced to type `c:#000` (or other numeric value).
- For any property with multiple values, this values can be entered after
  abbreviation and colon sign, separated by spaces or commas, or both. For
  example: `m:1em 2em` will expand to `margin: 1em 2em;`.
- Set of snippets defers from original Emmet: there are no abbreviations for
  very bad supported properties, and added abbreviations for some new properties
  (for Grid, as an example).
- Few abbreviations defers from original Emmet: `border-radius` expands from
  `bdra` or `bra` (instead of `bdrs`), and some  abbreviations for property
  values are different.
- When snippet has expanded, and that snippet needs you to finish the string -
  it will not add a semicolon or a closing bracket after cursor.

### HTML

This snippets are not similar to Emmet, though few of them may be almost
similar. If You still need emmet, You can install it from
[it's GitHub page](http://mattn.github.io/emmet-vim) and use it along with
UltiSnips and this *Vim-UltiSnips* snippets if you like.

Here are few basic of this snippets:

- Symbol `.`, `#` or `&` with folowing words will expand to class, ID or name
  attribute declaration respectively, almost like in Emmet.
- You can enter a name of HTML element and press <kbd>Tab</kbd>, and it will
  expand to HTML element with a cursor between tags. Block elements expand only
  on new line, and inline ones can be expanded inside of text.
- When You enter abbreviation for HTML element, You can add few attribute
  declarations to it, divided by spaces. It will expand to an element with given
  attributes. For example, `h1 class="special"` will expand to
  `<h1 class="special">_</h1>`. And You can even type
  `div .container` and press <kbd>Tab</kbd> <kbd>Tab</kbd> - first Tab will
  expand class declaration and second will expand an element - and it will
  expand to:

~~~html
  <div class="container">
    _
  </div>
~~~

See help files for further information.

### JavaScript

Only basic snippets are written. Here are some of them:

- Single quote `'` expands to two single quotes and puts the cursor between
  them. So does `"` symbol - for more comfortable writing in Russian.
- Curly brace `{` expands to two ones - to create a block of code.
- Letter `f` (after whitespace) expands to function definition with `function`
  keywoard, round braces and a block of code.

## Installation

I assume that you are using one of Linux desktop pcs, but this also must work
under MacOs.

### Install UltiSnips

You must have vim installed (of course), and UltiSnips plugin installed in it.
How to install UltiSnips using vundle - you can see at
[it's page at GitHub](https://github.com/sirver/UltiSnips).
If you are using different plugin manager - installation process is usually
similar - read documentation for your plugin. If you're not using any plugin
manager - it's better to use one, or read Vim documentation how to install
plugins with no manager.

### Make some preparations

You may create a special folder for this snippets, elsewise You can substitute
already existing snippets with these ones. If You already have
snippets and don't want to delete them - don't bother, just make one more
folder. But don't use name '*snippets*' for snippets folder - this is UltiSnips'
limitation! For example:

~~~sh
mkdir ~/.vim/ultisnippets
~~~

Then, if new folder is created, You need to add this folder to the list of
snippets folders in `.vimrc`:

~~~vim
let g:UltiSnipsSnippetDirectories=[$home.'/.vim/ultisnippets']
~~~

There can be added multiple comma-separated paths in this square brackets, and
UltiSnips will scan all these folders for snippets.

And don't forget to set up values for UltiSnips in your `.vimrc` file, if You
have not done this:

Define keys, for example:

~~~vim
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-p>"
let g:UltiSnipsJumpForwardTrigger="<c-l>"
let g:UltiSnipsJumpBackwardTrigger="<c-h>"
~~~

And optionally - vertical window splitting when editing snippets for current
file with `:UltiSnipsEdit` command:

~~~vim
let g:UltiSnipsEditSplit="vertical"
~~~

### Copy files

Go into folder that you have created for this ultisnippets, and clone repository
contents in it, like this:

~~~sh
cd ~/.vim/ultisnippets
git clone "https://github.com/alexandersolovyov/snippets-UltiSnips"
~~~

-or download and unpack repo contents there.

### Update help

Only russian help files are written for now.

To add help files supplied with this *Vim-UltiSnips* snippets and index them,
just run script from snippets folder:

~~~sh
./refresh_doc.sh
~~~

You may need to make this file executable before, or run it with `sh` command.

## Usage

Simply type an abbreviation of needed construction, and press <kbd>Tab</kbd> (or
your trigger key).

For more information see help files in vim with `:help` command. Help names
always begins on file type name and ends with '-snippets'. For example:

~~~vim
:h css-snippets
:h html-snippets
~~~
