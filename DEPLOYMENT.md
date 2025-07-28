# 🚀 Railway Deployment Guide

## Prerequisites (Fresh Windows Computer)

### 1. Install Git
```bash
# Download from: https://git-scm.com/download/win
# Install with default settings
git --version  # Verify installation
```

### 2. Install Node.js
```bash
# Download from: https://nodejs.org/ (LTS version)
# Install with default settings
node --version  # Verify installation
npm --version   # Verify installation
```

### 3. Install VS Code (Optional)
```bash
# Download from: https://code.visualstudio.com/
# Install with default settings
```

## Railway Deployment Steps

### Step 1: Create GitHub Repository

1. Go to [GitHub.com](https://github.com)
2. Sign up for a free account
3. Click "New repository"
4. Name it: `school-platform`
5. Make it Public
6. Don't initialize with README (we already have one)
7. Click "Create repository"

### Step 2: Upload Project to GitHub

Open Command Prompt or PowerShell in your project directory:

```bash
# Initialize git repository
git init

# Add all files
git add .

# Commit changes
git commit -m "Initial commit: School Platform"

# Add remote repository (replace YOUR_USERNAME with your GitHub username)
git remote add origin https://github.com/YOUR_USERNAME/school-platform.git

# Push to GitHub
git branch -M main
git push -u origin main
```

### Step 3: Deploy to Railway

1. Go to [Railway.app](https://railway.app)
2. Click "Start a New Project"
3. Sign up with GitHub
4. Click "Deploy from GitHub repo"
5. Select your `school-platform` repository
6. Click "Deploy Now"

### Step 4: Configure Environment Variables

In Railway dashboard:

1. Go to your project
2. Click on the service
3. Go to "Variables" tab
4. Add these environment variables:

```
NODE_ENV=production
PORT=5000
MONGO_URI=mongodb+srv://username:password@cluster.mongodb.net/school-platform?retryWrites=true&w=majority
JWT_SECRET=your-super-secret-jwt-key-change-this-in-production
CLIENT_URL=https://your-app-name.railway.app
```

### Step 5: Set Up MongoDB Atlas (Database)

1. Go to [MongoDB Atlas](https://www.mongodb.com/atlas)
2. Create free account
3. Create new cluster (free tier)
4. Click "Connect"
5. Choose "Connect your application"
6. Copy connection string
7. Replace `username`, `password`, and `cluster` in the MONGO_URI
8. Add to Railway environment variables

### Step 6: Configure Domain

1. In Railway dashboard, go to "Settings"
2. Under "Domains", you'll see your app URL
3. Copy this URL and update CLIENT_URL in environment variables
4. Redeploy if needed

## Post-Deployment

### Access Your Application

- **Frontend**: https://your-app-name.railway.app
- **Backend API**: https://your-app-name.railway.app/api
- **Health Check**: https://your-app-name.railway.app/api/health

### Create Admin Account

1. Go to your app URL
2. Click "Register"
3. Create account with role "Admin"
4. Login and start using the platform

## Troubleshooting

### Common Issues:

1. **Build Fails**: Check Railway logs for errors
2. **Database Connection**: Verify MONGO_URI is correct
3. **Environment Variables**: Make sure all variables are set
4. **Port Issues**: Railway automatically handles ports

### Railway Commands (if using Railway CLI):

```bash
# Install Railway CLI
npm install -g @railway/cli

# Login to Railway
railway login

# Link to project
railway link

# Deploy
railway up

# View logs
railway logs
```

## Cost Information

- **Railway Free Tier**: $5 credit monthly
- **MongoDB Atlas**: Free tier available
- **Total Cost**: $0 for small projects

## Support

- Railway Documentation: https://docs.railway.app/
- MongoDB Atlas Documentation: https://docs.atlas.mongodb.com/
- GitHub Help: https://help.github.com/ 