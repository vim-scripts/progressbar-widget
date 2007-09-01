
delfunction vim#widgets#progressbar#NewSimpleProgressBar
let files = 231
" vim#widgets#progressbar#NewSimpleProgressBar( title, max_value, [ winnr ] )
let pb = vim#widgets#progressbar#NewSimpleProgressBar("Processing files :",files) 
"call pb.setStyle('bar',{ 'fillchar' : '>' })
"call pb.setStyle('counter',{ 'color' : 'Error' })
"call pb.setStyle('title',{ 'color' : 'Type' })
"call pb.setStyle('bar',{ 'color' : 'Normal','fillcolor' : 'TODO'  })
try
  for i in range(files)
    "Do something with file
    sleep 10ms
    let new_value = pb.incr()
    "call pb.incr(2)
    "call pb.incr(-3)
  endfor
finally
  "restore the statusline
  "always put this in a finally block
  call pb.restore()
endtry
echo "Done."
