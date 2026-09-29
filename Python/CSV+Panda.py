import csv
import pandas as pd


def create_sample_csv(filename):
    header = ["ID", "Name", "Marks"]
    rows = [
        [1, "Aditya", 78],
        [2, "Kunal", 85],
        [3, "Rudra", 62],
        [4, "Shruti", 91],
    ]
    with open(filename, "w", newline="") as f:
        writer = csv.writer(f)
        writer.writerow(header)
        writer.writerows(rows)
    print(f"Sample CSV file '{filename}' created")


def read_csv_file(filename):
    print(f"\nReading data from {filename}:")
    with open(filename, "r") as f:
        reader = csv.reader(f)
        for row in reader:
            print(row)


def modify_and_write_csv(source_filename, new_filename, bonus_marks):
    with open(source_filename, "r") as f:
        reader = csv.reader(f)
        header = next(reader)
        data = list(reader)

    for row in data:
        row[2] = str(int(row[2]) + bonus_marks)

    with open(new_filename, "w", newline="") as f:
        writer = csv.writer(f)
        writer.writerow(header)
        writer.writerows(data)

    print(f"Modified CSV written to {new_filename}")


def read_csv_into_dataframe(filename):
    df = pd.read_csv(filename)
    print(f"\nData from {filename} loaded into pandas DataFrame:")
    print(df)
    print("\nDataFrame Summary:")
    print(df.describe())
    return df


def main():
    source_file = "students.csv"
    modified_file = "students_updated.csv"

    create_sample_csv(source_file)
    read_csv_file(source_file)

    bonus = int(input("\nEnter bonus marks to add for each student: "))
    modify_and_write_csv(source_file, modified_file, bonus)
    read_csv_file(modified_file)

    df = read_csv_into_dataframe(modified_file)
    print(f"\nAverage Marks after bonus: {df['Marks'].mean():.2f}")


if __name__ == "__main__":
    main()