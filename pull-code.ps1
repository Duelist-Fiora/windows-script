$sourcePath=pwd
$pathList='C:\Users\l\1zhenghao','C:\Users\l\renbo'
echo 'please select project, example: 0'
for ($i = 0; $i -lt $pathList.Length; $i++) {
    $selectPath=$pathList[$i]
    echo $i')'$selectPath
}
$input = Read-Host
while ($input -ge $pathList.Length) {
    echo 'input error, please input again...'
    $input = Read-Host
}
$targetPath=$pathList[$input]
$dir=dir $targetPath
echo 'pulling code...'
for ($i = 0; $i -lt $dir.Count; $i++) {
    $projectPath=$dir[$i].Name
    cd $targetPath\$projectPath
    echo $targetPath\$projectPath
    git pull
}
cd $sourcePath