echo 'cracking...'
sed -i '/function validateLicense(/a\  return;' node_modules/@nuxt/ui-pro/dist/module.mjs
echo 'cracked!!!'
