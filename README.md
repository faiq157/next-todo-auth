
# NEXT TODO

Todo app with authorization, CRUD operations of todos and real time, optimistic updates.

## Features

- Creating account
- Personalized data for each account
- Smooth experience on deleting and updating todo data
- Responsive UI
- Improved UX with animations

## Tech Stack

**Language:** TypeScript

**Framework:** React, Next.js

**Styling:** TailwindCSS, Framer-Motion

**Data Fetching:** Tanstack Query

**Database-ORM:** Prisma, Vercel-Postgres

**Auth:** Next-auth

**Server-side:** Node.js (Next.js api routes)

**Encryption:** Bcrypt






## Run Locally

Clone the project

```bash
  https://github.com/faiq157/next-todo-auth.git
```

Go to the project directory

```bash
  cd next-todo
```

Install dependencies

```bash
  npm install
```

Start the server

```bash
  npm run dev
```


## Screenshots


![image](https://github.com/user-attachments/assets/3b23435b-c48f-4525-884f-e16cb7f6dac2)

![image](https://github.com/user-attachments/assets/ef7f8778-f019-4712-8245-df405c3d5f96)

![image](https://github.com/user-attachments/assets/d246a209-914a-4679-ab75-83a3b7eb12d5)

![image](https://github.com/user-attachments/assets/7064ba79-febd-4543-96bc-61e9b5ac694d)

## complexity 


| Operation         | Code Example                          | Time Complexity | Reason                        |
|------------------|---------------------------------------|------------------|-------------------------------|
| Add Task         | `prisma.todo.create`                  | O(1)             | Direct DB insert              |
| Delete Task      | `prisma.todo.delete`                  | O(1)             | Delete by indexed ID          |
| Edit Task        | `prisma.todo.update`                  | O(1)             | Update by primary key         |
| Get All Tasks    | `prisma.todo.findMany`                | O(n)             | Fetching list of tasks        |



