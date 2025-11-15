#!/usr/bin/env python3
import pandas as pd
import sqlite3
import os

def main():
    print("Exporting to CSV...")
    
    os.makedirs('output_csvs', exist_ok=True)
    conn = sqlite3.connect('barefoot_survey.db')
    
    tables = ['survey_clean', 'segment_summary', 'channel_summary', 'flavor_summary', 'gender_comparison']
    
    for table in tables:
        df = pd.read_sql(f'SELECT * FROM {table}', conn)
        csv_file = f'output_csvs/{table}.csv'
        df.to_csv(csv_file, index=False, encoding='utf-8-sig')
        print(f"✅ {csv_file} ({len(df)} rows)")
    
    conn.close()
    print("\n✅ COMPLETE! Files in output_csvs/")

if __name__ == "__main__":
    main()