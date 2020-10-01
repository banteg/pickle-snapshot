-- get all deposits and withdrawals for chef and jars
SELECT * FROM `bigquery-public-data.crypto_ethereum.traces`
WHERE DATE(block_timestamp) >= "2020-09-11"
and to_address in (
    "0xbd17b1ce622d73bd438b9e658aca5996dc394b0d", -- MasterChef
    "0x2385d31f1eb3736be0c3629e6f03c4b3cd997ffd", -- psCRV
    "0xf79ae82dccb71ca3042485c85588a3e0c395d55b", -- pUNIDAI
    "0x46206e9bdaf534d057be5ecf231dad2a1479258b", -- pUNIUSDC
    "0x3a41ab1e362169974132dea424fb8079fd0e94d8"  -- pUNIUSDT
)
and substr(input, 0, 10) in (
    "0xde5f6268", -- jar.depositAll
    "0x2e1a7d4d", -- jar.withdraw
    "0x441a3e70", -- chef.withdraw
    "0xe2bbb158", -- chef.deposit
    "0x853828b6", -- jar.withdrawAll
    "0xb6b55f25"  -- jar.deposit
)
and status = 1
