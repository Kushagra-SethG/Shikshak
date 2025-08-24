import React from 'react';
import { Link, useLocation } from 'react-router-dom';
import ThemeToggle from './ThemeToggle';
import styles from './Header.module.css';

const Header = () => {
  const location = useLocation();

  const isActive = (path) => {
    return location.pathname === path;
  };

  return (
    <header className={styles.header}>
      <div className={styles.container}>
        <Link to="/dashboard" className={styles.logo}>
          <span className={styles.logoIcon}>🎓</span>
          Shikshak AI
        </Link>

        <nav className={styles.nav}>
          <Link 
            to="/dashboard" 
            className={`${styles.navLink} ${isActive('/dashboard') ? styles.active : ''}`}
          >
            Dashboard
          </Link>
        </nav>

        <div className={styles.userActions}>
          <ThemeToggle />
        </div>
      </div>
    </header>
  );
};

export default Header;
