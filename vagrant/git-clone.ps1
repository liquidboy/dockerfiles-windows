
[string]$container_name = $(Read-Host -Prompt 'Input your container name')
[string]$github_url = $(Read-Host -Prompt 'Input the https url of the github repo')
[string]$branch = $(Read-Host -Prompt 'Input the branch to checkout')
[string]$install_yarn = $(Read-Host -Prompt 'Install Yarn? (true/false)')
[string]$install_gulp = $(Read-Host -Prompt 'Install Gulp? (true/false)')
[string]$install_bower = $(Read-Host -Prompt 'Install Bower? (true/false)')
[string]$install_bazel = $(Read-Host -Prompt 'Install Bazel? (true/false)')

docker run -td --name $container_name --cpus 3 -i jose/servercore/node/git:latest
docker exec -i $container_name git clone -b $branch $github_url

if ($install_yarn.Equals("true")){
    Write-Host "installing yarn .... "
    docker exec -i $container_name powershell npm install -g yarn
}

if ($install_gulp.Equals("true")){
    Write-Host "installing gulp .... "
    docker exec -i $container_name powershell npm install -g gulp
}

if ($install_bower.Equals("true")){
    Write-Host "installing bower .... "
    docker exec -i $container_name powershell npm install -g bower
}

if ($install_bazel.Equals("true")){
    Write-Host "installing bazel .... "
    docker exec -i $container_name powershell choco install -y bazel
}