$sourcePath=pwd
$targetPath='C:\Users\l\1zhenghao'
$dir=dir $targetPath
echo 'pulling code...'
for ($i = 0; $i -lt $dir.Count; $i++) {
    $projectPath=$dir[$i].Name
    cd $targetPath\$projectPath
    echo $targetPath\$projectPath
    git pull
}
cd $sourcePath