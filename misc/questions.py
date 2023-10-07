import requests
import re

def count_questions_in_repo():
    # Fetch the content of the README.md from the repo
    url = "https://raw.githubusercontent.com/moabukar/tech-vault/main/README.md"
    response = requests.get(url)
    
    if response.status_code != 200:
        print("Failed to fetch the content.")
        return
    
    content = response.text
    
    # Use regex to find all questions
    pattern = r'<summary>(.*?)<\/summary>'
    questions = re.findall(pattern, content)
    
    # Count and display the number of questions
    print(f"Total number of questions in the repo: {len(questions)}")

if __name__ == "__main__":
    count_questions_in_repo()
