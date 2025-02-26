# Graduate Thesis System (GTS)

Graduate Thesis System (GTS) is a web-based platform designed for managing and searching academic theses efficiently. Inspired by the YÖK Thesis System, this application enables users to browse and search theses in detail, submit their own work, and manage thesis-related information dynamically. The system is built using **Django** on the backend and **JavaScript (AJAX)** for a seamless, interactive user experience.

## Features

### User Features
- 🔍 **Advanced Thesis Search:** Users can perform detailed searches based on keywords, authors, universities, and other filters.
- 📖 **View Thesis Details:** Each thesis contains metadata such as title, author, university, and related keywords.
- 📝 **Submit New Thesis:** Users can add their own theses with structured input fields and relevant details.
- 🎨 **Interactive Interface:** JavaScript and AJAX provide a smooth, dynamic search and submission process without full page reloads.

### Admin Features
- ✏️ **Edit & Manage Theses:** Admin users can modify, update, or delete theses submitted by users.
- 📂 **Data Consistency Checks:** The system ensures proper data relationships between authors, universities, and thesis topics.
- 🔒 **Role-Based Access Control:** Only authorized users can edit and manage content.

## Tech Stack
- **Backend:** Django (Python)
- **Frontend:** HTML, CSS, JavaScript (AJAX)
- **Database:** Microsoft SQL Server
- **Styling:** Bootstrap

## Installation

To set up the project locally, follow these steps:

1. Clone the repository:
   ```sh
   git clone https://github.com/kullaniciadi/Graduate-Thesis-System.git
   ```
2. Navigate to the project directory:
   ```sh
   cd Graduate-Thesis-System
   ```
3. Create a virtual environment (optional but recommended):
   ```sh
   python -m venv venv
   source venv/bin/activate  # MacOS/Linux
   venv\Scripts\activate     # Windows
   ```
4. Install dependencies:
   ```sh
   pip install -r requirements.txt
   ```
5. Apply migrations:
   ```sh
   python manage.py migrate
   ```
6. Run the development server:
   ```sh
   python manage.py runserver
   ```

Now, open your browser and go to `http://127.0.0.1:8000/` to access the application.

## Database Structure
The system follows a structured relational database design with the following main entities:
- **Thesis** (Stores thesis information)
- **Author** (Stores student details)
- **University** (Stores university details)
- **Institute** (Stores institute details)
- **Keywords** (Stores thesis-related keywords)

## Interactive Search & AJAX Functionality
The search system is optimized with **AJAX requests**, allowing real-time filtering without requiring a page reload. Users can refine their search results dynamically, making navigation more efficient and user-friendly.

## Security Measures
- **Role-based authentication** ensures that only authorized users can modify theses.
- **Data validation** prevents incorrect or duplicate thesis entries.
- **AJAX security enhancements** safeguard against unauthorized requests.

## Future Improvements
- ✅ Implement a file upload system for thesis documents.
- ✅ Introduce a notification system for thesis approval updates.
- ✅ Expand filtering options with more advanced search parameters.

## License
This project is licensed under the MIT License.

---
### Developer
- 👨‍💻 **Furkan Aksoy**

**Supervisor:** Assist. Prof. Dr. Volkan Tunalı

