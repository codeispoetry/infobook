# � Info - Personal Information Tracker

A web-based application for tracking and managing personal information and entries. Perfect for organizing thoughts, activities, notes, and personal records with timestamps and categorization.

## ✨ Features

- **Personal Entry Tracking** - Log entries with custom scopes and categories
- **Preset Messages** - Quick entry buttons for common activities and notes
- **Entry History** - View all historical entries with timestamps
- **Scope Filtering** - Filter entries by category, person, or location
- **Responsive Design** - Works seamlessly on desktop and mobile devices
- **Progressive Web App** - Install on devices like a native app for offline access
- **Modern Design** - Clean green-themed interface with professional styling

## 🚀 Getting Started

### Prerequisites
- Go 1.21 or higher
- Modern web browser

### Installation & Running

1. **Clone the repository**
   ```bash
   git clone https://github.com/codeispoetry/infobook.git
   cd infobook
   ```

2. **Install Go dependencies**
   ```bash
   go mod tidy
   ```

3. **Start the server**
   ```bash
   go run main.go
   ```

4. **Access the application**
   Open your browser to: `https://localhost:9002`

## 📝 Information Management

The app supports flexible entry tracking with customizable scopes such as:
- **Personal Categories** - Individual tracking areas
- **People** - Track interactions or notes about specific people
- **Locations** - Log information by location (Haus, Gütle, etc.)
- **Projects** - Organize entries by project or topic

## 🛠 Technology Stack

- **Backend**: Go with SQLite3 database
- **Frontend**: HTML5, CSS3, Vanilla JavaScript
- **Database**: SQLite3 for local data storage
- **Icons**: Custom SVG information-themed icons
- **PWA**: Service Worker for offline capabilities
- **Design**: Green color scheme with modern UI/UX

## 📝 API Endpoints

- `GET /` - Serve the web interface
- `POST /post` - Add new information entry
- `GET /list` - Retrieve all entries
- `DELETE /delete` - Remove specific entries

### POST /post
```json
{
  "scope": "Personal",
  "message": "Completed daily review and planning"
}
```

### GET /list Response
```json
[
  {
    "id": 1,
    "timestamp": "2026-03-25T10:30:00Z",
    "scope": "Personal",
    "message": "Completed daily review and planning"
  }
]
```

## 🎨 Interface Features

- **Green Theme** - Calming green colors with modern information icons
- **Multi-language Support** - German interface with clean typography
- **Advanced Filtering** - Quick filtering by scope, person, or category
- **Auto-refresh** - Entries update automatically after submission
- **Responsive Layout** - Mobile-first design that works everywhere

## 📱 Progressive Web App

The application can be installed as a PWA on mobile devices and desktop, providing:
- Offline access to your information
- Native app-like experience
- Fast loading and performance
- Home screen installation

## 🔒 Data Storage

All data is stored locally in SQLite3 database (`info.db`) ensuring:
- Privacy - your data stays on your device
- Fast access - no network dependency for reading data
- Reliability - proven database technology
- Backup friendly - single file database

## 🗃 Database Schema

```sql
CREATE TABLE entries (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    timestamp DATETIME DEFAULT CURRENT_TIMESTAMP,
    scope TEXT NOT NULL,
    message TEXT NOT NULL
);
```

## 🤝 Contributing

Feel free to submit issues and enhancement requests!

## 📄 License

This project is created for managing sheep herd activities.
