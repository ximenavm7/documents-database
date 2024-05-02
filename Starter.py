from time import sleep
from Libraries_M import*
from Proximity_M import*

def QueryChooser(language, retrieved_Docs, processedDocs, FreqT, reduced_FreqT):
    while True:
        print("""\n------------------------QUERY SELECTOR------------------------
                    What action would you like to perform?
                    1. Compare 2 docs similarity
                    2. Type a consult
                    3.Select another language\n""")
        qChoice = int(input("Type the number of the option: "))
        
        if qChoice == 1:
            print("\n         You have selected: DOCUMENT SIMILARITY\n")
            d0 = int(input("Type the index of the first document: "))
            d1 = int(input("Type the index of the second document: "))
            sFormula = (input("Type 'cosine' or 'jac' to obtain similarity: "))
            dFormula = (input("Type 'euc' or 'man' to obtain dissimilarity: "))

            similarity_2Docs = calc_similarity(sFormula, reduced_FreqT, d0, d1)
            print(f"\nThe similarity of the two documents using {sFormula} is: ",  similarity_2Docs)

            dissimilarity_2Docs = calc_dissimilarity(dFormula, reduced_FreqT, d0, d1)
            print(f"The dissimilarity of the two documents using {dFormula} is: ",  dissimilarity_2Docs)

            
        
        elif qChoice == 2:
            print("\n         You have selected: CONSULT SEARCH\n")
            n = int(input("Number of documents to retrieve: "))
            natural_q = input("What would you like to search?: ")

            processed_q = lemmatize(language, natural_q)

            values = find_relevant_docs(processed_q, n, processedDocs, "cosine","euc")
            print("\nTop {} most similar documents to your search:".format(n))
            for idx, score in values[0]:
                print("Document {}: Similarity score = {}".format(idx, score))

            print("\nTop {} most dissimilar documents to your search:".format(n))
            for idx, score in values[1]:
                print("Document {}: Dissimilarity score = {}".format(idx, score))

                
        elif qChoice == 3:
            print("\nReturning to language selector...")
            sleep(3)
            break

def LibraryChooser():
    while True:
        print("""\n------------------------MAIN MENU------------------------
                    Choose the language:
                    1. English
                    2. French
                    3.Exit\n""")
        library = int(input("Language to select: "))

        if library == 1:
            language = "EN"
            retrieved_Docs, processedDocs, FreqT, reduced_FreqT = launch_Library(language)
            print(QueryChooser(language, retrieved_Docs, processedDocs, FreqT, reduced_FreqT))
            


        elif library == 2:
            language = "FR"
            retrieved_Docs, processedDocs, FreqT, reduced_FreqT = launch_Library(language)
            print(QueryChooser(language, retrieved_Docs, processedDocs, FreqT, reduced_FreqT))

        elif library == 3:
            print("\nThank you, goodbye!")
            sleep(3)
            break
        else:
            print("\nNot valid, please try again")
            sleep(1)


LibraryChooser()


