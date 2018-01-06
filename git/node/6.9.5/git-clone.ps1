
$container_name = Read-Host -Prompt 'Input your container name'
$github_url = Read-Host -Prompt 'Input the https url of the github repo'
$branch = Read-Host -Prompt 'Input the branch to checkout'

if (!(Test-Path source)) {
    mkdir source
}

cd subdir

docker run -td --name $container_name --cpus 3 -i jose/node/git:latest git clone $github_url

git checkout $branch

