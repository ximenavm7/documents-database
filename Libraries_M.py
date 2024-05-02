from SQL_Methds import get_docContent
from Preprocess_M import lemmatize
from FreqTable_M import*

def launch_Library(language):
    # 1.Retrieving doc content from DB
    retrieved_Docs = get_docContent("DB/read_file.sql", language)
    print("\nPlease wait while we process the documents selected ...\n")

    # 2. Process language for indexing purposes
    processedDocs = [lemmatize(language, doc) for doc in retrieved_Docs]
    print("Number of processed and retrieved documents: ", len(processedDocs))
    
    #3. Create FreqT and reduce it through SVD
    FreqT = (generate_frequency_matrix(processedDocs))
    print("Frequency table of said documents: \n",FreqT)

    reduced_FreqT = apply_svd(FreqT, 3)
    print("Frequency table has been reduced through SVD to apply LSI. Ready to query")

    return retrieved_Docs, processedDocs, FreqT, reduced_FreqT