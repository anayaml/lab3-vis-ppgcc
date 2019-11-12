import pandas as pd
import csv

final_csv = open('domicilios-cajazeiras.csv', 'w+', encoding="utf-8")
csv_writer = csv.writer(final_csv, delimiter=',', lineterminator='\n')

domicilio = pd.read_csv('domicilio-cZ.csv', encoding='utf8')

for value in domicilio.itertuples():
    if (value.V060 > value.V061):
        csv_writer.writerow([value.Cod_setor, value.Situacao_setor, value.V001, value.V060, value.V061, 'Mulheres'])
    else:
        csv_writer.writerow([value.Cod_setor, value.Situacao_setor, value.V001, value.V060, value.V061, 'Homens'])
