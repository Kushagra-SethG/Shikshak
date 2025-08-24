# CodeTutor AI - Simplified Version (No Authentication)

A streamlined version of CodeTutor AI that removes all authentication requirements for easier setup and use.

## ✅ What's Removed:
- User registration and login
- User authentication tokens
- Progress tracking per user
- User sessions and JWT tokens
- Auth-related UI components

## 🚀 What's Available:
- **Tutorial Content** - Interactive programming lessons for C, C++, C#, Java, Python
- **Quiz Generation** - Programming quizzes with instant feedback
- **Code Execution** - Run and test code in multiple languages
- **AI Integration** - Uses Google Gemini API for content generation
- **Simple Interface** - Clean, no-barrier access to all features

## 🔧 Quick Start:

### 1. Start the Application:
```powershell
.\start-simple.ps1
```

### 2. Access the Interface:
- **React Frontend** (if Node.js available): http://localhost:3000
- **Test Interface** (fallback): Open `test-interface.html` in browser
- **Backend API**: http://localhost:5000

## 📁 File Structure:
```
CodeTutor_AI/
├── backend/           # Flask API (no auth required)
├── frontend/          # React app (no login/register)
├── test-interface.html # Simple HTML test page
├── start-simple.ps1   # Startup script
└── README-SIMPLE.md   # This file
```

## 🔑 API Endpoints (No Auth Required):

### Tutorial Content:
- `GET /api/tutor/content?language=Python&topic=Variables`
- `GET /api/tutor/topics?language=Python`
- `GET /api/tutor/notes?language=Python&topic=Variables`

### Quizzes:
- `POST /api/quiz/generate` - Generate quiz questions
- `POST /api/quiz/submit` - Submit quiz answers
- `POST /api/quiz/custom` - Generate custom quiz

### Code Execution:
- `POST /api/run_code` - Execute code in various languages

### Health Check:
- `GET /api/health` - Check if backend is running
- `GET /api/test-ai` - Test AI integration

## 🎯 Features:

### Dashboard:
- Browse programming languages
- Start learning any topic immediately
- Access practice quizzes

### Tutorial System:
- Interactive step-by-step lessons
- Checkpoint-based learning
- AI-generated content with fallbacks

### Quiz System:
- Multiple choice questions
- Instant feedback and explanations
- Custom quizzes mixing topics

### Code Runner:
- Execute Python, C, C++, Java code
- Real-time compilation and execution
- Error handling and output display

## 🛠️ AI Configuration:
The app uses Google Gemini API (configured in `.env`). If no API key is provided, it falls back to hardcoded educational content.

## ✨ Benefits of Simplified Version:
- ⚡ **Instant Access** - No sign-up required
- 🔧 **Easy Setup** - Fewer dependencies
- 🎯 **Focus on Learning** - No authentication barriers
- 🚀 **Quick Start** - One script starts everything

Perfect for classrooms, workshops, or personal learning!
