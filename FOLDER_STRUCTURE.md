# NUCareer Frontend - Folder Structure Guide

## Overview
This document describes the organized folder structure of the NUCareer frontend application.

## Directory Layout

```
frontend/
├── app/                          # Next.js app directory (main application)
│   ├── api/                      # API route handlers
│   │   ├── auth/                 # Authentication endpoints
│   │   ├── gemini-chat/          # AI assistant API
│   │   ├── resume-analysis/      # Resume analysis endpoint
│   │   ├── code-analysis/        # Code analysis endpoint
│   │   ├── mock-interview/       # Interview simulation endpoint
│   │   └── [other-apis]/         # Other service endpoints
│   ├── [page-routes]/            # Main page routes
│   │   ├── dashboard/
│   │   ├── interview/
│   │   ├── mock-interview/
│   │   ├── upload-resume/
│   │   └── [other-pages]/
│   ├── globals.css               # Global styles
│   ├── layout.js                 # Root layout
│   └── page.js                   # Landing page
│
├── components/                   # Reusable React components
│   ├── Nav.jsx                   # Navigation component
│   ├── ChatBox.jsx               # Chat UI component
│   ├── Layout.jsx                # Layout wrapper
│   ├── AuthCard.jsx              # Authentication card
│   └── [other-components]/       # Other UI components
│
├── context/                      # React context API
│   └── AuthContext.jsx           # Authentication context
│
├── lib/                          # Organized utility libraries
│   ├── utils/                    # Utility functions
│   │   ├── geminiUtils.js        # Gemini API utilities
│   │   ├── codeAnalysisUtils.js  # Code analysis helpers
│   │   └── sakhaAdvanced.js      # SAKHA (AI assistant) utilities
│   └── api/                      # API utility helpers (expandable)
│
├── utils/                        # Legacy utilities (keep for backward compatibility)
│   ├── geminiUtils.js
│   ├── codeAnalysisUtils.js
│   └── sakhaAdvanced.js
│
├── config/                       # Configuration files
│   ├── jsconfig.json             # JS path aliases
│   ├── tailwind.config.js        # Tailwind CSS config
│   └── postcss.config.js         # PostCSS config
│
├── styles/                       # Additional stylesheets
│   └── globals.css               # Global styles backup
│
├── public/                       # Static assets
│
├── package.json                  # Dependencies & scripts
├── next.config.js                # Next.js configuration
├── tailwind.config.js            # Tailwind configuration
├── jsconfig.json                 # JS config
└── README.md                     # Project documentation

```

## File Organization Best Practices

### API Routes (`app/api/`)
- **Purpose**: Server-side API endpoints
- **Organization**: Group by feature (auth, interview, resume, etc.)
- **Pattern**: `route.js` files in feature subdirectories

### Page Routes (`app/`)
- **Purpose**: Frontend pages and their layouts
- **Organization**: Dynamic route folders with `[id]` for parameterized routes
- **Pattern**: `page.js` for each route

### Components (`components/`)
- **Purpose**: Reusable React components
- **Organization**: Flat structure for now, can expand to `ui/` and `features/` subdirectories
- **Pattern**: Export as JSX modules

### Utilities (`lib/utils/`)
- **Purpose**: Utility functions and helpers
- **Organization**: Grouped by purpose (Gemini utilities, code analysis, AI assistant)
- **Usage**: Import from `@/lib/utils/`

### Context (`context/`)
- **Purpose**: React Context API providers
- **Organization**: One file per context
- **Pattern**: Export context and provider component

## Cleaned Files (Comments Removed)
- `lib/utils/geminiUtils.js` - Gemini API integration
- `lib/utils/codeAnalysisUtils.js` - Code analysis helpers
- `lib/utils/sakhaAdvanced.js` - AI assistant utilities
- `next.config.js` - Next.js configuration
- `utils/geminiUtils.js` - (also cleaned)

## Removed Files
- `.next/` - Build cache (regenerated on next build)
- `package-lock.json` - Lock file (regenerate with `npm install`)
- `.env.example` - Not needed when `.env.local` exists
- `index.html` - Duplicate (Next.js uses app layout)

## Import Paths
Use path aliases (defined in `jsconfig.json`):
```javascript
import { geminiUtils } from '@/lib/utils/geminiUtils'
import { AuthContext } from '@/context/AuthContext'
import { ChatBox } from '@/components/ChatBox'
```

## Development Tips
1. Keep components in `components/` for easy reuse
2. Place utility functions in `lib/utils/` organized by feature
3. API routes in `app/api/` grouped by functionality
4. Use context for global state management
5. Keep styles modular and import where used

## Quick Access
- **Main App**: `app/page.js`
- **Navigation**: `components/Nav.jsx`
- **Auth Logic**: `context/AuthContext.jsx` + `app/api/auth/`
- **AI Assistant**: `lib/utils/sakhaAdvanced.js`
- **Code Analysis**: `lib/utils/codeAnalysisUtils.js`
