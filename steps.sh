#!/bin/bash

npm create vite@latest react-template -- --template react
cd react-template
npm install
npm install -D tailwindcss@3 postcss autoprefixer
npx tailwindcss init -p
cat > tailwind.config.js << 'EOF'
/** @type {import('tailwindcss').Config} */
export default {
  content: [
    "./index.html",
    "./src/**/*.{js,ts,jsx,tsx}",
  ],
  theme: {
    extend: {},
  },
  plugins: [],
}
EOF

cat > src/index.css << 'EOF'
@tailwind base;
@tailwind components;
@tailwind utilities;
EOF

cat > src/App.jsx << 'EOF'
export default function App() {
  return (
    <div className="min-h-screen bg-blue-500 flex items-center justify-center">
      <h1 className="text-4xl font-bold text-white">Hello World</h1>
    </div>
  )
}
EOF

mkdir -p src/components