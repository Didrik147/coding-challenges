# My solution
import pandas as pd

def createDataframe(student_data: List[List[int]]) -> pd.DataFrame:
    id_list = []
    age_list = []

    for i in range(len(student_data)):
        id_list.append(student_data[i][0])
        age_list.append(student_data[i][1])


    df = pd.DataFrame({
        'student_id': id_list,
        'age': age_list
    })

    return df


# Shorter solution
import pandas as pd

def createDataframe(student_data: List[List[int]]) -> pd.DataFrame:
    column_names = ['student_id', 'age']
    df = pd.DataFrame(student_data, columns=column_names)
    return df

# Even shorter
import pandas as pd

def createDataframe(student_data: List[List[int]]) -> pd.DataFrame:
    return pd.DataFrame(student_data, columns=['student_id', 'age'])