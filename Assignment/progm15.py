'''
Write a Python program to count the occurrences of each word in a given sentence ?
'''
# Input sentence
sentence = input("Enter a sentence: ")

# Convert the sentence to lowercase and split into words
words = sentence.lower().split()

# Create a dictionary to store word counts
word_count = {}

# Count occurrences of each word
for word in words:
    if word in word_count:
        word_count[word] += 1
    else:
        word_count[word] = 1

# Print the word counts
for word, count in word_count.items():
    print(f"{word}: {count}")
