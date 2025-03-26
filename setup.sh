#!/bin/bash
# Create React app
npx create-react-app my-app

# Navigate to the app directory
cd my-app

# Install Tailwind CSS
npm install -D tailwindcss postcss autoprefixer
npx tailwindcss init -p

# Configure Tailwind in tailwind.config.js
echo "/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./src/**/*.{js,jsx,ts,tsx}",
  ],
  theme: {
    extend: {},
  },
  plugins: [],
}" > tailwind.config.js

# Add Tailwind directives to src/index.css
echo "@tailwind base;
@tailwind components;
@tailwind utilities;" > src/index.css

# Copy the component file
cp ../AddThese/homepage-mockup.tsx src/

# Modify App.tsx
echo "import React from 'react';
import HomePage from './homepage-mockup';
import './index.css'; // Import Tailwind CSS

function App() {
  return (
    <div className=\"App\">
      <HomePage />
    </div>
  );
}

export default App;" > src/App.tsx

echo "React app setup complete. Run 'npm start' to start the application."
