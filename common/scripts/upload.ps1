param( $npmauthtoken ) 

dir $PSScriptRoot/../temp/artifacts/packages/*.tgz |% { 
  & "$PSScriptRoot/../temp/pnpm-local/node_modules/.bin/pnpm" publish $_ --tag preview --scope public "--$npmauthtoken" 
}