$pathcurrent=(Get-Item -Path ".\" -Verbose).FullName
if ([IO.Directory]::Exists($pathnow+"\web\vendor")) 
    { 
        docker run -i --rm -v $pathcurrent\web:/app 3dsinteractive/composer:7.1 update 
    } 
    else 
    { 
        docker run -i --rm -v $pathcurrent\web:/app 3dsinteractive/composer:7.1 install 
    } 