import requests
import re
import random
import keyboard

def get_questions_from_repo():
    url = "https://raw.githubusercontent.com/moabukar/tech-vault/main/README.md"
    response = requests.get(url)
    content = response.text

    questions = re.findall(r'<summary>(.*?)<\/summary>', content)
    
    random.shuffle(questions)
    
    return questions

def main():
    questions = get_questions_from_repo()
    
    for question in questions:
        user_input = input(f"Question: {question}\nPress any key to continue or 'x' to exit.\n").strip()
        if user_input.lower() == 'x':
            break


## Uses method of just tapping x to leave the question

# def main():
#     questions = get_questions_from_repo()

#     for question in questions:
#         print(f"Question: {question}")
#         print("Press any key to continue or 'x' to exit.")
        
#         # Capture a single key press
#         event = keyboard.read_event(suppress=True)
        
#         if event.name.lower() == 'x':
#             break


if __name__ == "__main__":
    main()
