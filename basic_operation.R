body.data = read.csv("total.csv")

head(body.data)
body.data[,2]
head(body.data[,c(1,3)])
head(body.data$publisher)
body.data[,c("publisher", "data_format")]

# 応用技：統計情報からCSVフォーマットでリソース数が多いオープンデータの上位１０件を取得・表示
head(body.data[order(body.data$resource_count,decreasing=T),][body.data$data_format=="CSV", c("publisher","group_title","resource_count")],n = 10)

# CSV形式のデータを抽出
body.data.ordered = body.data[order(body.data$resource_count,decreasing=T),][, c("dataset_id","publisher","group_title","frequency_of_update","language","year","data_format","resource_count")]
csvformat.data <- body.data.ordered[body.data.ordered$data_format=="CSV",]

# 標準偏差
sd(body.data.ordered$data_format)
# 普遍分散
var(csvformat.data$data_format)

View(csvformat.data)


