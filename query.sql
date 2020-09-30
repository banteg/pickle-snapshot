SELECT * FROM `bigquery-public-data.crypto_ethereum.traces`
WHERE DATE(block_timestamp) >= "2020-09-11"
and to_address in ("0xbd17b1ce622d73bd438b9e658aca5996dc394b0d", "0xc25a3a3b969415c80451098fa907ec722572917f", "0x2385d31f1eb3736be0c3629e6f03c4b3cd997ffd", "0xf79ae82dccb71ca3042485c85588a3e0c395d55b", "0x46206e9bdaf534d057be5ecf231dad2a1479258b", "0x3a41ab1e362169974132dea424fb8079fd0e94d8")
and block_number < 10958758
and substr(input, 0, 10) in ("0xde5f6268", "0x2e1a7d4d", "0x441a3e70", "0xe2bbb158", "0x853828b6", "0xb6b55f25")
and status = 1
