import pandas as pd
import sqlite3
import sys

def main():
    print("=" * 80)
    print("Importing Excel to SQLite...")
    print("=" * 80)
    
    try:
        df = pd.read_excel('低酒精饮料偏好调查.xlsx', sheet_name='Data')
        print(f"✅ Loaded {len(df)} rows, {len(df.columns)} columns")
    except FileNotFoundError:
        print("❌ Error: Excel file not found!")
        sys.exit(1)
    
    conn = sqlite3.connect('barefoot_survey.db')
    df.to_sql('survey_raw', conn, if_exists='replace', index=False)
    
    result = conn.execute("SELECT COUNT(*) FROM survey_raw").fetchone()
    print(f"✅ Database created: {result[0]} rows")
    conn.close()
    
    print("\n✅ COMPLETE! Run: sqlite3 barefoot_survey.db")

if __name__ == "__main__":
    main()
    