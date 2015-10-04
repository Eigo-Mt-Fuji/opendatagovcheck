library(ggplot2)

# 取得元：　http://www.itdashboard.go.jp/Statistics/opendata
total.data = read.csv("total_mine.csv", encoding = "UTF-8")

# CSV提出している提供元
total.data.csv.filter = total.data[total.data$data_format=="CSV", c("dataset_id","publisher","group_title","frequency_of_update","language","year","data_format","resource_count")]
ggplot(total.data.csv.filter, aes(x=publisher, fill=data_format)) +
    geom_histogram() + 
    theme_bw(base_family = "HiraKakuProN-W3") +
    ylab("count")

