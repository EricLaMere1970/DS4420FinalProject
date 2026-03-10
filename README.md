# DS4420FinalProject
### Authors
Eric LaMere and Cody Ho

### Goal 
Recognizing different accents from the UK using Machine Learning

### Motivation
For such a small island nation, it is surprising how wide the spectrum of local accents is in the UK. Each city seemingly has their own tone, and even within cities there can be distinct accents. Instead of generalizing all UK accents as British, as many Americans do, we wanted to find how we can identify different UK accents using Machine Learning.

### Models
Two machine learning approaches are implemented and compared:

1. Naive Bayes Classifier (R)

A Naive Bayes classifier is implemented in R to provide a simple probabilistic baseline model.
Speech recordings are converted into acoustic feature vectors (e.g., MFCCs and other summary statistics), which are then used to estimate the probability of an accent class given the observed features.

This model assumes feature independence and uses Gaussian likelihoods for continuous speech features.

2. Convolutional Neural Network (Python)

A Convolutional Neural Network (CNN) is implemented in Python as a more advanced model capable of learning spatial patterns from audio representations such as spectrograms. CNNs are commonly used in speech recognition tasks because they can automatically learn relevant acoustic features from raw or transformed audio data.

The CNN model serves as a comparison to evaluate whether deep learning methods outperform the simpler probabilistic approach. 

### Data
source: OpenSLR [https://openslr.org/83]
Main metadata file: `line_index.tsv` (tab-separated)
The dataset that we will be using is sourced from Open Speech and Language Resources (OpenSLR), a site devoted to hosting speech and language resources such as training corpora for speech recognition. The dataset includes crowdsourced UK and Ireland English speech data, which contains high quality audio recordings of English sentences spoken by volunteers speaking in different English dialects/accents. The dataset contains wave files and a TSV file (line_index.tsv). The data we will be using categorizes the accents: Irish, Midlands English, Northern English, Scottish, Southern English, and Welsh. All categories have both male and female recordings. Future iterations beyond the class project may use data that is even more regional (ex: Scouse, Geordie, London Cockney, etc). 

### Prerequisites

### Requirements

### Usage Workflow
1. Download and extract the OpenSLR UK/Irish speech dataset into your local `data/` folder.
2. Use `line_index.tsv` to map each audio file to its accent label.
3. Run preprocessing/feature extraction, then train the Naive Bayes model (R) and CNN model (Python).
4. Compare model performance using the same test split and report key metrics (e.g., accuracy/F1).

