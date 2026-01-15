# React + Express.js Full Stack Application

A modern full-stack web application featuring a React frontend powered by Vite and an Express.js backend, both written in TypeScript.

## 🚀 Tech Stack

### Frontend ([`ui/`](ui))
- **React 19.2** - Modern UI library with latest features
- **TypeScript 5.9** - Type-safe development
- **Vite 7.2** - Lightning-fast build tool and dev server
- **ESLint** - Code quality and consistency

### Backend ([`app/`](app))
- **Node.js** - JavaScript runtime
- **Express 5.2** - Fast, unopinionated web framework
- **TypeScript 5.9** - Type-safe server development
- **CORS** - Cross-Origin Resource Sharing support
- **tsx** - TypeScript execution with watch mode

## 📁 Project Structure

```
.
├── app/                    # Backend application
│   ├── src/
│   │   └── index.ts       # Express server entry point
│   ├── package.json
│   └── tsconfig.json
│
├── ui/                     # Frontend application
│   ├── src/
│   │   ├── App.tsx        # Main React component
│   │   ├── main.tsx       # React entry point
│   │   ├── App.css        # Component styles
│   │   └── index.css      # Global styles
│   ├── public/
│   ├── package.json
│   ├── vite.config.ts     # Vite configuration
│   └── tsconfig.json
│
└── .scripts/              # Development scripts
    ├── dev-backend.sh     # Run backend only
    ├── dev-frontend.sh    # Run frontend only
    └── dev-both.sh        # Run full stack
```

## 🛠️ Setup & Installation

### Prerequisites
- Node.js (v18 or higher recommended)
- npm or yarn package manager

### Installation

1. **Clone the repository**
   ```bash
   cd /home/sante8wsl/projects/sante8hub/nodejs/react-expressjs
   ```

2. **Install backend dependencies**
   ```bash
   cd app
   npm install
   cd ..
   ```

3. **Install frontend dependencies**
   ```bash
   cd ui
   npm install
   cd ..
   ```

## 🚦 Running the Application

### Option 1: Run Full Stack (Recommended)
Run both frontend and backend concurrently:
```bash
./.scripts/dev-both.sh
```

### Option 2: Run Separately

**Backend only** (runs on http://localhost:5000):
```bash
./.scripts/dev-backend.sh
```

**Frontend only** (runs on http://localhost:5001):
```bash
./.scripts/dev-frontend.sh
```

## 🌐 API Endpoints

### Backend API (Port 5000)

- **GET** [`/api/welcome`](app/src/index.ts:10) - Returns a welcome message
  ```json
  {
    "message": "Hello from the Express Backend!"
  }
  ```

## 🔧 Configuration

### Frontend Configuration

The frontend Vite server ([`ui/vite.config.ts`](ui/vite.config.ts)) is configured with:
- **Port**: 5001
- **Proxy**: `/api` requests are proxied to `http://localhost:5000`
- **Host**: Enabled for network access

### Backend Configuration

The backend server ([`app/src/index.ts`](app/src/index.ts)) runs on:
- **Port**: 5000
- **CORS**: Enabled for cross-origin requests
- **JSON Parsing**: Enabled via `express.json()` middleware

## 📝 Development

### Hot Reload
Both frontend and backend support hot reload:
- **Frontend**: Vite HMR (Hot Module Replacement)
- **Backend**: tsx watch mode with automatic restart

### TypeScript Configuration

#### Frontend ([`ui/tsconfig.json`](ui/tsconfig.json))
- Target: ESNext
- JSX: react-jsx
- Strict mode enabled
- Separate configs for app and node environments

#### Backend ([`app/tsconfig.json`](app/tsconfig.json))
- Module: NodeNext
- Target: ESNext
- ES Module support
- Strict type checking enabled

## 🧪 Testing

Currently, test scripts need to be configured:
- Backend: Update [`app/package.json`](app/package.json:7) test script
- Frontend: Add test configuration to [`ui/package.json`](ui/package.json)

## 📦 Building for Production

### Frontend
```bash
cd ui
npm run build
```
This creates an optimized production build in [`ui/dist/`](ui/dist).

### Backend
Add a build script to [`app/package.json`](app/package.json) for TypeScript compilation.

## 🔒 Environment Variables

Consider adding `.env` files for:
- API endpoints
- Port configurations
- Database connections
- API keys

## 📚 Available Scripts

### Backend ([`app/package.json`](app/package.json))
- Currently minimal - consider adding:
  - `dev`: Development mode
  - `build`: Compile TypeScript
  - `start`: Production mode
  - `test`: Run tests

### Frontend ([`ui/package.json`](ui/package.json))
- `npm run dev`: Start development server
- `npm run build`: Build for production
- `npm run lint`: Run ESLint
- `npm run preview`: Preview production build

## 🚧 Roadmap / Improvements

- [ ] Add database integration (PostgreSQL/MongoDB)
- [ ] Implement authentication system
- [ ] Add comprehensive test suites
- [ ] Set up CI/CD pipeline
- [ ] Add Docker configuration
- [ ] Implement logging system
- [ ] Add API documentation (Swagger/OpenAPI)
- [ ] Set up environment-based configurations
- [ ] Add state management (Redux/Zustand)
- [ ] Implement error handling middleware

## 📄 License

ISC

## 👥 Author

Check [`app/package.json`](app/package.json:10) and [`ui/package.json`](ui/package.json) for author information.

## 🔗 Related Documentation

- [React Documentation](https://react.dev/)
- [Vite Documentation](https://vitejs.dev/)
- [Express.js Documentation](https://expressjs.com/)
- [TypeScript Documentation](https://www.typescriptlang.org/)
