import pandas as pd


df = pd.read_excel("10m50sc_pinout.xls",converters={'Bank Number':str, 'E144 (2)':int})
df.style.hide_index()
#print(df)
bank_arr = ["1A","1B","2","3","4","5","6","7","8"]

#bank = "1A"
bank=input("input bank: {1A,1B,2,3,4,5,6,7,8}\n")
filtered_bank = df.loc[df['Bank Number'] == bank]
filtered_cols = filtered_bank[["Bank Number","E144 (2)"]]

num_of_pins = filtered_cols.shape[0]
filtered_cols = filtered_cols.to_string(index=False)
print(filtered_cols)
print("# of pins: {}".format(num_of_pins))



