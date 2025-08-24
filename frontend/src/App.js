import React from 'react';
import { BrowserRouter as Router, Routes, Route, Navigate } from 'react-router-dom';
import { useTheme } from './context/ThemeContext';
import Header from './components/Common/Header';
import Dashboard from './components/Dashboard/Dashboard';
import TutorInterface from './components/Tutor/TutorInterface';
import QuizInterface from './components/Quiz/QuizInterface';
import QuizResults from './components/Quiz/QuizResults';
import CustomQuiz from './components/Quiz/CustomQuiz';
import Notes from './components/Tutor/Notes';
import './App.css';

function App() {
  const { theme } = useTheme();

  return (
    <div className="App" data-theme={theme}>
      <Router>
        <Header />
        <main className="main-content">
          <Routes>
            <Route path="/dashboard" element={<Dashboard />} />
            <Route path="/tutor/:language/:topic" element={<TutorInterface />} />
            <Route path="/notes/:language/:topic" element={<Notes />} />
            <Route path="/quiz/:language/:topic" element={<QuizInterface />} />
            <Route path="/quiz-results" element={<QuizResults />} />
            <Route path="/custom-quiz/:language" element={<CustomQuiz />} />
            <Route path="*" element={<Navigate to="/dashboard" />} />
          </Routes>
        </main>
      </Router>
    </div>
  );
}

export default App;
