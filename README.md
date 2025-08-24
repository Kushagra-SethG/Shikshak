# Shikshak 🎓

**Shikshak** (meaning "Teacher" in Hindi/Sanskrit) is a modern, accessible educational platform designed to teach programming languages (C, C++, C#, Java, Python) through an AI-powered tutor and comprehensive quiz system. With no authentication barriers and an engaging glassmorphism UI, Shikshak makes learning programming intuitive and enjoyable for everyone.

## 🌟 Features

### 🚀 Instant Access - No Authentication Required
- **Jump straight into learning** - No sign-up or login barriers
- **Immediate access** to all educational content
- **Simplified user experience** focused on learning

### 🤖 AI-Powered Content Generation
- **Dynamic tutorial creation** using Google Gemini AI
- **Intelligent quiz generation** with context-aware questions
- **Comprehensive note compilation** for each programming topic
- **Fallback to curated content** when AI services are unavailable

### 🎓 Interactive AI Tutor
- Step-by-step learning powered by Google Gemini AI
- Checkpoint questions for understanding verification
- Sequential topic progression with AI-generated content
- Comprehensive notes automatically generated for each topic

### 🎯 Advanced Quiz System
- **AI-generated quiz questions** tailored to programming concepts
- Four difficulty levels: Easy, Medium, Hard, Nightmare
- Multiple question types: MCQ, Coding, Debugging
- Timer-based quizzes with auto-submission
- Detailed results with AI-powered explanations
- Custom quiz generator for exploring different topics

### 💻 Integrated Code Compiler
- Support for C, C++, C#, Java, and Python
- Real-time code execution with instant feedback
- Error handling and output display
- Secure sandboxed execution environment

### 🎨 Modern Glassmorphism UI
- **Stunning glassmorphism design** with frosted glass effects
- **Dynamic gradient backgrounds** that respond to user interaction
- **Smooth animations** and hover effects throughout
- **Responsive design** optimized for all devices
- **Light and Dark theme** support with seamless switching
- **Engaging dashboard** with interactive language cards and progress indicators

## 🛠️ Tech Stack

### Frontend
- **React.js** - Modern UI framework
- **React Router DOM** - Seamless navigation
- **CSS Modules** - Scoped component styling
- **Glassmorphism Design** - Modern frosted glass aesthetic
- **CSS Grid & Flexbox** - Responsive layout system

### Backend
- **Flask** - Lightweight Python web framework
- **Google Gemini AI** - Advanced AI content generation
- **JSON File System** - Simple data persistence
- **Subprocess** - Secure code compilation and execution

### Styling & Design
- **CSS Variables** - Dynamic theme management
- **Gradient Backgrounds** - Engaging visual effects
- **CSS Animations** - Smooth user interactions
- **Responsive Design** - Mobile-first approach

## 📁 Project Structure

```
Shikshak/
├── backend/
│   ├── app.py                 # Main Flask application
│   ├── tutor.py              # Tutorial content routes  
│   ├── quiz.py               # Quiz generation and submission
│   ├── compiler.py           # Code execution service
│   ├── ai_service.py         # Google Gemini AI integration
│   ├── database/
│   │   └── progress.json     # Learning progress data (optional)
│   ├── requirements.txt      # Python dependencies
│   ├── ai_requirements.txt   # AI provider packages
│   └── .env                  # Environment variables (ignored in git)
├── frontend/
│   ├── public/
│   │   └── index.html        # HTML template
│   ├── src/
│   │   ├── components/       # React components
│   │   │   ├── Dashboard/    # Enhanced glassmorphism dashboard
│   │   │   ├── Tutor/        # AI tutor interface
│   │   │   ├── Quiz/         # Interactive quiz system
│   │   │   ├── Compiler/     # Code editor and execution
│   │   │   └── Common/       # Shared UI components
│   │   ├── utils/            # API utilities
│   │   ├── App.js            # Main app component
│   │   └── index.js          # App entry point
│   └── package.json          # Node.js dependencies
├── start_app.ps1             # Windows application launcher
├── setup_ai.ps1             # Windows AI setup script
├── AI_INTEGRATION_GUIDE.md  # Detailed AI setup guide
└── README.md                 # Project documentation
```

## 🤖 Google Gemini AI Setup

### 🚀 Quick Setup

1. **Get your Google Gemini API key:**
   - Go to [Google AI Studio](https://makersuite.google.com/app/apikey)
   - Create API key and copy it

2. **Configure environment:**
   ```bash
   cd backend
   copy .env.example .env  # Windows
   ```
   
   Edit `.env` file:
   ```bash
   GOOGLE_API_KEY=AIzaSyC_your_actual_api_key_here
   ```

3. **Start the application:**
   ```bash
   .\start_app.ps1  # Windows - automatically starts both backend and frontend
   ```

   Or manually:
   ```bash
   # Terminal 1 - Backend
   cd backend
   python app.py
   
   # Terminal 2 - Frontend  
   cd frontend
   npm start
   ```

📖 **For detailed setup instructions, see [GEMINI_SETUP.md](GEMINI_SETUP.md)**

## 🚀 Setup and Installation

### Prerequisites
- **Node.js** (v14 or higher)
- **Python** (v3.8 or higher)
- **Git**
- **AI API Key** (Google Gemini)

### Backend Setup

1. **Navigate to the backend directory:**
   ```bash
   cd backend
   ```

2. **Create a virtual environment:**
   ```bash
   python -m venv venv
   ```

3. **Activate the virtual environment:**
   ```bash
   # Windows
   venv\Scripts\activate
   
   # macOS/Linux
   source venv/bin/activate
   ```

4. **Install dependencies:**
   ```bash
   pip install -r requirements.txt
   pip install google-generativeai python-dotenv  # For Google Gemini AI
   ```

5. **Configure Google Gemini (copy from setup above):**
   ```bash
   copy .env.example .env  # Add your Google API key
   ```

6. **Run the Flask server:**
   ```bash
   python app.py
   ```

   The backend will be available at `http://localhost:5000`

### Frontend Setup

1. **Navigate to the frontend directory:**
   ```bash
   cd frontend
   ```

2. **Install dependencies:**
   ```bash
   npm install
   ```

3. **Start the development server:**
   ```bash
   npm start
   ```

   The frontend will be available at `http://localhost:3000`

### Compiler Setup (Optional)

For full code execution functionality, install the following compilers:

- **C/C++:** GCC or Clang
- **Java:** OpenJDK or Oracle JDK
- **C#:** .NET SDK
- **Python:** Already included

## 📚 API Endpoints

### Tutorial Content
- `GET /api/tutor/content` - Get AI-generated tutorial content for a topic
- `GET /api/tutor/topics` - Get available topics for a programming language
- `GET /api/tutor/notes` - Get comprehensive notes for a topic

### Quiz System
- `POST /api/quiz/generate` - Generate AI-powered quiz for a topic
- `POST /api/quiz/submit` - Submit quiz answers and get results
- `POST /api/quiz/custom` - Generate custom quiz from multiple topics

### Code Execution
- `POST /api/run_code` - Execute code in specified language with real-time output

### Health Check
- `GET /api/health` - Check if the backend service is running
- `GET /api/test-ai` - Test Google Gemini AI connectivity

## 🎮 Usage Guide

### Getting Started
1. **Launch the application** using `start_app.ps1` or manually start backend and frontend
2. **Open your browser** to `http://localhost:3000`
3. **Select a programming language** from the beautiful glassmorphism dashboard
4. **Start learning immediately** - no registration or login required!

### Learning Experience
1. **Interactive Dashboard** - Explore programming languages with engaging cards showing difficulty levels and features
2. **AI Tutor** - Learn concepts step-by-step with Google Gemini AI-powered explanations
3. **Comprehensive Notes** - Access detailed, AI-generated notes for any topic
4. **Interactive Quizzes** - Test your knowledge with dynamically generated questions
5. **Live Code Compiler** - Practice coding directly in the browser with instant feedback

### Enhanced Features
- **Instant Access** - No barriers to learning, jump straight into any topic
- **Beautiful UI** - Enjoy the modern glassmorphism design with smooth animations
- **AI-Powered Content** - Every tutorial and quiz is enhanced by Google Gemini AI
- **Theme Switching** - Toggle between light and dark modes seamlessly
- **Responsive Design** - Perfect experience on desktop, tablet, and mobile devices

## 🔧 Configuration

### Environment Variables
Create a `.env` file in the backend directory:
```
GOOGLE_API_KEY=your-google-gemini-api-key-here
```

### Data Storage
The application uses simple JSON files for optional data persistence:
- `backend/database/progress.json` - Optional learning progress data

### UI Customization
Modify CSS variables in component files to customize:
- `Dashboard.module.css` - Dashboard glassmorphism effects
- `Header.module.css` - Navigation and theme switching
- Individual component CSS modules for specific styling

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🆘 Support

For support, create an issue in the GitHub repository or contact the development team.

## 🎯 Future Enhancements

- **Enhanced AI Integration** - More advanced AI-powered features and personalization
- **Additional Programming Languages** - Support for JavaScript, Go, Rust, and more
- **Advanced Code Challenges** - Complex coding problems and competitive programming
- **Community Features** - Code sharing and collaborative learning
- **Mobile App** - Native mobile applications for iOS and Android
- **Offline Mode** - Download content for offline learning
- **Advanced Analytics** - Detailed learning insights and progress analytics

---

**Shikshak** - शिक्षा का नया अंदाज़! (Education's New Style!) 🚀✨

*Experience the future of programming education with AI-powered learning, stunning UI, and zero barriers to entry.*
