# Download Data
## URLs
training_data.url = "https://d396qusza40orc.cloudfront.net/predmachlearn/pml-training.csv"
test_data.url = "https://d396qusza40orc.cloudfront.net/predmachlearn/pml-testing.csv"
original_data.url = "http://groupware.les.inf.puc-rio.br/static/WLE/WearableComputing_weight_lifting_exercises_biceps_curl_variations.csv"

## Output
data_folder = "data"
training_data.file = file.path(data_folder, "pml-training.csv")
testing_data.file = file.path(data_folder, "pml-testing.csv")
original_data.file = file.path(data_folder, "Original.csv")

download.file(training_data.url, training_data.file)
download.file(test_data.url, testing_data.file)
download.file(original-data.url, original_data.file)

# Check if data is ok
training_data.df = readr::read_csv(training_data.file)
testing_data.df = readr::read_csv(testing_data.file)

testit::assert(dim(training_data.df) == c(19622, 160))
testit::assert(dim(training_data.df) == c(20, 160))
