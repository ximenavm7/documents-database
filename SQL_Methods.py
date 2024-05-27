import pymysql

#Credentials, change accordingly to your database's credentials
host = "localhost"
user = "root"
password = "MySQL123!"
database = "documents"

def get_docContent(sql_file, language): #Retrieve the texts from documents with given language
    connection = pymysql.connect(host=host, user=user, password=password, database=database)
    cursor = connection.cursor()

    # Read SQL file
    with open(sql_file, 'r') as file:
        sql_queries = file.read()

    # Split queries (assuming queries are separated by ';')
    queries = sql_queries.split(';')

    if language == "EN":
        cursor.execute(queries[0])
    else:
        cursor.execute(queries[1])

    results = cursor.fetchall()
    
    docs = []
            
    print("\n------------------------RETRIEVED DOCUMENTS FROM DATABASE------------------------\n")
    for result in results:
        id, title, date, content, reference = result
        docs.append(content)

        print(f"Document {id}")
        print(f"Title: {title}")
        print(f"Date: {date}")
        print(f"Reference: {reference}")
        print()

    # Closing database connection
    cursor.close()
    connection.close()

    return docs


def store_Term(sql_file, dictionary): #Store temporary terms on database
    connection = pymysql.connect(host=host, user=user, password=password, database=database)
    cursor = connection.cursor()

    with open(sql_file, 'r') as file:
        sql_queries = file.read()
    
    # Split queries (assuming queries are separated by ';')
    queries = sql_queries.split(';')
    
    cursor.execute(queries[0])
    connection.commit()

    for word_id, word in dictionary.items():
        cursor.execute(queries[1],(word_id, word, word))
    connection.commit()

    cursor.close()
    connection.close()