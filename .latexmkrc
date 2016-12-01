#!/usr/bin/env perl
$latex            = 'platex -synctex=1 -kanji=utf8 -interaction=batchmode -halt-on-error';
$bibtex           = 'pbibtex';
$biber            = 'biber --bblencoding=utf8 -u -U --output_safechars';
$dvipdf           = 'dvipdfmx %O -o %D %S';
$makeindex        = 'mendex %O -o %D %S';
$max_repeat       = 5;
$pdf_mode         = 3;
$pvc_view_file_via_temporary = 0;
if ($^O eq 'MSWin32') {
    $pdf_previewer = 'SumatraPDF';
} elsif ($^O eq 'linux') {
    $pdf_previewer = 'evince'
}
