package youtube

import (
	"fmt"
	"os/exec"
	_ "os/exec"
)

type Youtube struct {
	videoId string
}

func GetMediaAudio () {
	// Extract to smaller functions
	urlKeyValue := fmt.Sprintf("video_url=%s", "https://www.youtube.com/watch?v=qwPiYnceRYU")

	outputFileNameKeyValue := fmt.Sprintf("output_file_name=%s", "test_fwl")
	scriptExecution := exec.Command("bash", "./scripts/download_file.sh")

	scriptExecution.Env = append(scriptExecution.Env, urlKeyValue, outputFileNameKeyValue)

	output, err := scriptExecution.Output()

	
	if err != nil {
		// An Error Occurred
		fmt.Println(err, "Err ===>")
		}else{
		scriptResponse := string(output)

		if scriptResponse == "06" {
			// Error Case
		}
	}
}

