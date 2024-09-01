# VidhyaRachna

**VidhyaRachna** is a Java web application designed to help users build and manage their resumes. This project uses a SQL database to store and manage user and resume data.

## Features

- Create and manage multiple resumes.
- Add and update personal information, education, work experience, skills, projects, and certifications.
- User authentication and profile management.

## Prerequisites

- **Java 8** or later
- **Apache Tomcat** or any other Java EE server
- **MySQL** or any other SQL database
- **JDK** and **JRE** installed
- **Git** for version control

## Getting Started

### Clone the Repository

```bash
git clone https://github.com/your-username/vidhyarachna.git
cd vidhyarachna
```

### Setting Up the Database

1. **Create a Database**:

   - Create a database named `resumebuilder` in your SQL server.

2. **Configure Database Connection**:
   - Update the database connection details in your `ConnectToDB` class if necessary.

### Build and Deploy

1. **Compile the Project**:

   - Ensure that all necessary JAR files are in the `WEB-INF/lib` directory.

2. **Deploy to Tomcat**:
   - Copy the WAR file to the `webapps` directory of your Tomcat server.
   - Start the Tomcat server and access the application at `http://localhost:8080/vidhyarachna`.

### Usage

1. **Access the Application**:

   - Navigate to `http://localhost:8080/vidhyarachna` in your web browser.

2. **Create an Account**:

   - Register a new account to start building your resume.

3. **Manage Your Resume**:
   - Log in to manage your resumes, update personal information, education, work experience, skills, projects, and certifications.

## Contributing

1. **Fork the Repository**:

   - Create a fork of this repository on GitHub.

2. **Create a New Branch**:

   - Create a new branch for your changes:
     ```bash
     git checkout -b feature/your-feature
     ```

3. **Make Your Changes**:

   - Implement your changes and commit them:
     ```bash
     git add .
     git commit -m "Description of your changes"
     ```

4. **Push Your Changes**:

   - Push your branch to GitHub:
     ```bash
     git push origin feature/your-feature
     ```

5. **Create a Pull Request**:
   - Open a pull request to merge your changes into the main repository.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact

For questions or comments, please contact [sauravpatil.rcpit@gmail.com](sauravpatil.rcpit@gmail.com).
