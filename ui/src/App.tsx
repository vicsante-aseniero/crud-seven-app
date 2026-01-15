import { useEffect, useState } from 'react'

function App() {
  const [message, setMessage] = useState<string>("Loading...")

  useEffect(() => {
    fetch('http://localhost:5000/api/welcome')
      .then(res => res.json())
      .then(data => setMessage(data.message))
      .catch(() => setMessage("Error connecting to backend"))
  }, [])

  return (
    <div className="min-h-screen flex items-center justify-center bg-gray-100">
      <div className="p-8 bg-white shadow-xl rounded-lg">
        <h1 className="text-3xl font-bold text-blue-600">Full Stack Welcome Page</h1>
        <p className="mt-4 text-gray-600">
          Backend Status: <span className="font-mono font-bold text-green-500">{message}</span>
        </p>
      </div>
    </div>
  )
}

export default App
