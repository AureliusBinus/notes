const fs = require('fs');
const path = require('path');
require('dotenv').config();

const filePath = path.join(__dirname, '../android/app/google-services.json');
const apiKey = process.env.ANDROID_API_KEY;

if (!apiKey) {
  console.error('ANDROID_API_KEY environment variable is not set.');
  process.exit(1);
}

fs.promises.readFile(filePath, 'utf8')
  .then(data => {
    const result = data.replace(/"current_key":\s*"ANDROID_API_KEY"/, `"current_key": "${apiKey}"`);
    return fs.promises.writeFile(filePath, result, 'utf8');
  })
  .then(() => {
    console.log('API key injected successfully.');
  })
  .catch(err => {
    console.error('Error:', err);
    process.exit(1);
  });
