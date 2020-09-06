# Download Data
training_data.url = "https://d396qusza40orc.cloudfront.net/predmachlearn/pml-training.csv"
test_data.url = "https://d396qusza40orc.cloudfront.net/predmachlearn/pml-testing.csv"

data_folder = "data"
training_data.file = file.path(data_folder, "pml-training.csv")
testing_data.file = file.path(data_folder, "pml-testing.csv")

download.file(training_data.url, training_data.file)
download.file(test_data.url, testing_data.file)

# Check if data is ok
training_data.df = readr::read_csv(training_data.file)
testing_data.df = readr::read_csv(testing_data.file)

testit::assert(dim(training_data.df) == c(19622, 160))
testit::assert(dim(training_data.df) == c(20, 160))
