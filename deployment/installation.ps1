wget https://dotnet.microsoft.com/download/dotnet/scripts/v1/dotnet-install.sh; `
chmod +x dotnet-install.sh; `
./dotnet-install.sh -version 8.0.303; `
$ENV:PATH="$HOME/.dotnet:$ENV:PATH"; `
dotnet tool install --global dotnet-ef --version 8.0.0; `
git clone https://github.com/AlexBeyd/Commercial-Marketplace-SaaS-Accelerator.git -b 8.0.0 --depth 1; `
cd ./Commercial-Marketplace-SaaS-Accelerator/deployment; `
.\Deploy.ps1 `
 -WebAppNamePrefix "saasottest01" `
 -ResourceGroupForDeployment "aremo-saas-accelerator" `
 -PublisherAdminUsers "aremo@centrilogic.com" `
 -Location "Canada Central" 