# 🎓 School Online Platform

A comprehensive online school platform built with Node.js, Express, MongoDB, and React. This platform provides a complete learning management system for students, teachers, and administrators.

## ✨ Features

### 🏫 For Students
- Browse and enroll in courses
- Access course materials and assignments
- Submit assignments and track grades
- View progress and certificates
- Interactive learning dashboard

### 👨‍🏫 For Teachers
- Create and manage courses
- Upload course materials
- Create assignments and grade submissions
- Track student progress
- Analytics and reporting

### 👨‍💼 For Administrators
- User management (students, teachers, admins)
- Course oversight and approval
- System analytics and reporting
- Platform configuration

## 🛠️ Tech Stack

### Backend
- **Node.js** - Runtime environment
- **Express.js** - Web framework
- **MongoDB** - Database
- **Mongoose** - ODM for MongoDB
- **JWT** - Authentication
- **bcryptjs** - Password hashing
- **express-validator** - Input validation
- **helmet** - Security middleware

### Frontend
- **React 18** - UI library
- **React Router** - Client-side routing
- **React Query** - Data fetching and caching
- **Tailwind CSS** - Styling framework
- **Axios** - HTTP client
- **React Hook Form** - Form management
- **React Hot Toast** - Notifications

## 🚀 Quick Start

### Prerequisites
- Node.js (v16 or higher)
- MongoDB (v4.4 or higher)
- npm or yarn

### Installation

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd school-platform
   ```

2. **Install dependencies**
   ```bash
   # Install backend dependencies
   npm install
   
   # Install frontend dependencies
   cd client
   npm install
   cd ..
   ```

3. **Environment Setup**
   ```bash
   # Create .env file in the root directory
   cp .env.example .env
   ```
   
   Update the `.env` file with your configuration:
   ```env
   NODE_ENV=development
   PORT=5000
   MONGO_URI=mongodb://localhost:27017/school-platform
   JWT_SECRET=your-super-secret-jwt-key-change-this-in-production
   CLIENT_URL=http://localhost:3000
   ```

4. **Start MongoDB**
   ```bash
   # Start MongoDB service
   mongod
   ```

5. **Run the application**
   ```bash
   # Development mode (runs both backend and frontend)
   npm run dev
   
   # Or run separately:
   # Backend only
   npm run server
   
   # Frontend only
   npm run client
   ```

6. **Access the application**
   - Frontend: http://localhost:3000
   - Backend API: http://localhost:5000
   - API Health Check: http://localhost:5000/api/health

## 📁 Project Structure

```
school-platform/
├── server/                 # Backend code
│   ├── config/            # Configuration files
│   ├── models/            # MongoDB models
│   ├── routes/            # API routes
│   └── index.js           # Server entry point
├── client/                # Frontend code
│   ├── public/            # Static files
│   ├── src/
│   │   ├── components/    # Reusable components
│   │   ├── contexts/      # React contexts
│   │   ├── pages/         # Page components
│   │   ├── services/      # API services
│   │   └── index.js       # React entry point
│   └── package.json
├── package.json           # Root package.json
└── README.md
```

## 🔧 API Endpoints

### Authentication
- `POST /api/auth/register` - Register new user
- `POST /api/auth/login` - User login
- `GET /api/auth/me` - Get current user
- `POST /api/auth/forgot-password` - Request password reset
- `POST /api/auth/reset-password` - Reset password

### Users
- `GET /api/users` - Get all users (admin only)
- `GET /api/users/profile` - Get user profile
- `PUT /api/users/profile` - Update profile
- `PUT /api/users/change-password` - Change password

### Courses
- `GET /api/courses` - Get all courses
- `GET /api/courses/:id` - Get course by ID
- `POST /api/courses` - Create course (teacher/admin)
- `PUT /api/courses/:id` - Update course
- `DELETE /api/courses/:id` - Delete course

### Enrollments
- `POST /api/enrollments` - Enroll in course
- `GET /api/enrollments/my-courses` - Get user's courses
- `PUT /api/enrollments/:id` - Update enrollment
- `DELETE /api/enrollments/:id` - Drop course

### Assignments
- `POST /api/assignments` - Create assignment
- `GET /api/assignments/course/:courseId` - Get course assignments
- `POST /api/assignments/:id/submit` - Submit assignment
- `PUT /api/assignments/submissions/:id/grade` - Grade submission

## 👥 User Roles

### Student
- Enroll in courses
- Access course materials
- Submit assignments
- View grades and progress

### Teacher
- Create and manage courses
- Create assignments
- Grade submissions
- View student analytics

### Admin
- Manage all users
- Oversee all courses
- System-wide analytics
- Platform configuration

## 🎨 UI Components

The platform includes a modern, responsive UI with:
- Clean and intuitive design
- Mobile-responsive layout
- Dark/light theme support
- Loading states and animations
- Toast notifications
- Form validation
- Data tables and charts

## 🔒 Security Features

- JWT-based authentication
- Password hashing with bcrypt
- Input validation and sanitization
- CORS configuration
- Rate limiting
- Helmet security headers
- Role-based access control

## 📊 Database Schema

### User Model
- Personal information (name, email, etc.)
- Role-based fields (student ID, teacher subjects)
- Authentication data
- Profile settings

### Course Model
- Course details (title, description, code)
- Instructor and enrollment information
- Materials and syllabus
- Rating and analytics

### Enrollment Model
- Student-course relationship
- Progress tracking
- Grades and completion status

### Assignment Model
- Assignment details and requirements
- Submission tracking
- Grading system

## 🚀 Deployment

### Backend Deployment
1. Set up MongoDB Atlas or local MongoDB
2. Configure environment variables
3. Deploy to Heroku, Vercel, or AWS

### Frontend Deployment
1. Build the React app: `npm run build`
2. Deploy to Netlify, Vercel, or AWS S3

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests if applicable
5. Submit a pull request

## 📝 License

This project is licensed under the MIT License.

## 🆘 Support

For support and questions:
- Create an issue in the repository
- Contact the development team
- Check the documentation

## 🔮 Future Enhancements

- Video conferencing integration
- Mobile app development
- Advanced analytics dashboard
- Payment integration
- Multi-language support
- Advanced assessment tools
- Social learning features

---

**Built with ❤️ for modern education** 