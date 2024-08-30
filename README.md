## **User Data Validator** 🦸‍♀️

**What is this?** 
This Bash script is a simple tool that helps you validate user data. It checks if the email address provided is valid and whether the user ID is even or odd. 

**How to use it?**
1. **Clone this repository:**
   ```bash
   git clone https://github.com/amrelkhodary/bash-scripts.git
   ```
2. **Navigate to the project directory:**
   ```bash
   cd bash-scripts/
   ```
3. **Create a database file:**
   Create a CSV file named `database.txt` and add user data in the following format:
   ```
   name,email,id
   John Doe,johndoe@example.com,123
   Jane Smith,janesmith@example.com,456
   ```
4. **Run the script:**
   ```bash
   sudo chmod -x check_database.sh
   ./check-database.sh database.txt
   ```
   The script will output whether each email is valid and the corresponding ID is even or odd.

**Example output:**
```
'johndoe@example.com' is valid!
'123' is odd

'janesmith@example.com' is valid!
'456' is even
```

**Let's validate some user data!** 🎉
