import numpy as np
from scipy.spatial.distance import *
# Function prototypes
def calc_similarity(f, m, c1, c2):   
    pass

def calc_dissimilarity(f, m, c1, c2):
    pass

# Function implementations
def calc_similarity(f, m, c1, c2):   
    """
    Compute similarity between two vectors in a matrix using a specified formula.

    Args:
    - f: The formula for calculating similarity (e.g., "cosine", "jac").
    - m: The matrix containing the vectors.
    - c1: The column index of the first vector.
    - c2: The column index of the second vector.

    Returns:
    - similarity: The similarity between the two vectors.
    """
    v1 = m[:, c1]
    v2 = m[:, c2]

    if f == "cosine":
        similarity = 1 - cosine(v1, v2)
    elif f == "jac":
        similarity = jaccard(v1, v2)  
    return similarity

def calc_dissimilarity(f, m, c1, c2): 
    """
    Compute dissimilarity between two vectors in a matrix using a specified formula.

    Args:
    - f: The formula for calculating dissimilarity (e.g., "euc", "man").
    - m: The matrix containing the vectors.
    - c1: The column index of the first vector.
    - c2: The column index of the second vector.

    Returns:
    - dissimilarity: The dissimilarity between the two vectors.
    """
    v1 = m[:, c1]
    v2 = m[:, c2]

    if   f == "euc":
        dissimilarity = euclidean(v1, v2)
    elif f == "man":
        dissimilarity = cityblock(v1, v2)
    return dissimilarity
