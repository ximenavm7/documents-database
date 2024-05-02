import pandas as pd
import numpy as np
from SQL_Methds import store_Term
from Proximity_M import calc_similarity, calc_dissimilarity
from gensim import corpora

# Function prototypes
def generate_frequency_matrix(texts): 
    pass

def apply_svd(freq_matrix, k=3): 
    pass

def find_relevant_docs(query, n, preprocessed_texts, sim_formula, dissim_formula):
    pass

# Function implementations
def generate_frequency_matrix(texts): 
    # Create a dictionary based on the preprocessed texts
    lexicon = corpora.Dictionary(texts)

    # Store the terms in the database
    store_Term("DB/save_terms.sql", lexicon)

    # Convert the preprocessed texts to a bag-of-words representation
    corpus = [lexicon.doc2bow(text) for text in texts]

    # Calculate the term-frequency matrix
    freq_matrix = []

    # Iterate through the corpus
    for doc in corpus:
        row = [0] * len(lexicon)
        for word_id, freq in doc:
            row[word_id] = freq
        freq_matrix.append(row)

    # Convert the frequency matrix to a Pandas DataFrame
    freq_df = pd.DataFrame(freq_matrix, columns=[lexicon[id] for id in lexicon])
    freq_transposed = freq_df.T
    return freq_transposed

def apply_svd(freq_matrix, k=3): 
    # Convert the frequency DataFrame to a NumPy array
    freq_np = freq_matrix.to_numpy()

    # Perform Singular Value Decomposition (SVD) on the frequency matrix
    U, Sigma, Vt = np.linalg.svd(freq_np, full_matrices=False)

    # Truncate the U, Sigma, and Vt matrices based on the desired number of components (k)
    U_k = U[:, :k]
    Sigma_k = np.diag(Sigma[:k])
    Vt_k = Vt[:k, :]

    # Compute the reduced matrix by multiplying the truncated U, Sigma, and Vt matrices
    reduced_matrix = U_k @ Sigma_k @ Vt_k

    return reduced_matrix

def find_relevant_docs(query, n, preprocessed_texts, sim_formula, dissim_formula):
    sim_scores = []
    dissim_scores = []

    preprocessed_texts.append(query)

    freq_matrix = generate_frequency_matrix(preprocessed_texts)
    reduced_matrix = apply_svd(freq_matrix, 3)

    for i, _ in enumerate(range(reduced_matrix.shape[1] - 1)):
        sim = calc_similarity(sim_formula, reduced_matrix, i, -1)
        dissim = calc_dissimilarity(dissim_formula, reduced_matrix, i, -1)

        sim_scores.append((i, sim))
        dissim_scores.append((i, dissim))
    
    sim_scores.sort(key=lambda x: x[1], reverse=True)
    dissim_scores.sort(key=lambda x: x[1])

    most_similar = sim_scores[:n]
    most_dissimilar = dissim_scores[:n]

    return most_similar, most_dissimilar
