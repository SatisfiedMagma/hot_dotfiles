$pdf_previewer = "zathura %O %S &> /dev/null &";
#$pdf_previewer = 'start evince 2> /dev/null'; #(to switch previewers)
sub asy {return system("asy \"$_[0]\"");}
add_cus_dep("asy","eps",0,"asy");
add_cus_dep("asy","pdf",0,"asy");
add_cus_dep("asy","tex",0,"asy");
