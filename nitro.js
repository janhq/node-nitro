#!/usr/bin/env node

const { spawn } = require('child_process');
const path = require('path');

// Determine the path of nitro or nitro.exe depending on the operating system
const nitroExecutable = process.platform === 'win32' ? 'nitro.exe' : 'nitro';
const nitroPath = path.join(__dirname, nitroExecutable);

// Get the arguments passed to this script
const args = process.argv.slice(2);

// Create a child process to run the nitro file
const child = spawn(nitroPath, args, {
    cwd: __dirname, // Set the working directory to __dirname
    stdio: 'inherit' // Inherit stdin, stdout, and stderr from the current process
});

// Handle the child process's exit
child.on('close', (code) => {
    console.log(`Child process exited with code ${code}`);
});

// Handle errors
child.on('error', (err) => {
    console.error('Failed to start child process:', err);
});