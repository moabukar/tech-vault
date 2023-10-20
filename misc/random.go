package main

import (
	"fmt"
	"io/ioutil"
	"math/rand"
	"net/http"
	"regexp"
	"strings"
	"time"
)

func getQuestionsFromRepo() ([]string, error) {
	url := "https://raw.githubusercontent.com/moabukar/tech-vault/main/README.md"
	resp, err := http.Get(url)
	if err != nil {
		return nil, err
	}
	defer resp.Body.Close()

	body, err := ioutil.ReadAll(resp.Body)
	if err != nil {
		return nil, err
	}

	content := string(body)
	re := regexp.MustCompile(`<summary>(.*?)<\/summary>`)
	matches := re.FindAllStringSubmatch(content, -1)

	var questions []string
	for _, match := range matches {
		questions = append(questions, match[1])
	}

	rand.Seed(time.Now().UnixNano())
	rand.Shuffle(len(questions), func(i, j int) {
		questions[i], questions[j] = questions[j], questions[i]
	})

	return questions, nil
}

func main() {
	questions, err := getQuestionsFromRepo()
	if err != nil {
		fmt.Println("Error:", err)
		return
	}

	for _, question := range questions {
		var userInput string
		fmt.Printf("Question: %s\nPress any key to continue or 'x' to exit.\n", question)
		fmt.Scanln(&userInput)
		if strings.ToLower(userInput) == "x" {
			break
		}
	}
}
