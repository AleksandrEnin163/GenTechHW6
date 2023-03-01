// Создание транзакции
db.transactions.insertOne({
    "id" : "163164",
    "created_at" : ISODate("2023-03-01T16:00:00.000+0000"),
    "recipient_id" : "u003",
    "sender_id" : "u164",
    "amount" : NumberInt(500),
    "currency" : "eur",
    "is_completed" : false
})

// Поиск всех транзакций, отправленных конкретным отправителем
db.transactions.find({ "sender_id" : "u163" })

// Поиск всех транзакций, полученных конкретным получателем:
db.transactions.find({ "recipient_id" : "u002" })

// Обновление статуса выполнения транзакции:
db.transactions.updateOne(
    { "id" : "163163" },
    { $set: { "is_completed" : true } }
)

// Удаление всех транзакций, отправленных конкретным отправителем:
db.transactions.deleteMany({ "sender_id" : "u163" })
