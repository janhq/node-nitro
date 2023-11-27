const axios = require('axios');
const fs = require('fs');
const os = require('os');
const { execSync } = require('child_process');

const nitroVersion = require('./package.json').nitroVersion;

const platform = os.platform();
const url = downloadUrls[platform][nitroVersion];