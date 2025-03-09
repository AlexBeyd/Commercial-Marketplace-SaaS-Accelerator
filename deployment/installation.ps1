wget https://dotnet.microsoft.com/download/dotnet/scripts/v1/dotnet-install.sh; `
chmod +x dotnet-install.sh; `
./dotnet-install.sh -version 8.0.303; `
$ENV:PATH="$HOME/.dotnet:$ENV:PATH"; `
dotnet tool install --global dotnet-ef --version 8.0.0; `
git clone https://github.com/Azure/Commercial-Marketplace-SaaS-Accelerator.git -b 8.0.0 --depth 1; `
cd ./Commercial-Marketplace-SaaS-Accelerator/deployment; `
.\Deploy.ps1 `
 -WebAppNamePrefix "aremo-saasottest01" `
 -ResourceGroupForDeployment "saas-accelerator-studies-v8" `
 -PublisherAdminUsers "beyderman.alex@gmail.com" `
 -Location "Canada Central" 