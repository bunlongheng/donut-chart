export default function Header() {
  return (
    <header className="bg-black/20 backdrop-blur-md border-b border-white/10">
      <div className="container mx-auto px-4 py-6">
        <div className="flex items-center justify-between">
          <div className="flex items-center space-x-3">
            <div className="w-8 h-8 bg-gradient-to-r from-blue-500 to-purple-600 rounded-lg flex items-center justify-center">
              <span className="text-white font-bold text-sm">🧊</span>
            </div>
            <h1 className="text-2xl font-bold text-white">
              Hello
            </h1>
          </div>
        </div>
      </div>
    </header>
  )
}