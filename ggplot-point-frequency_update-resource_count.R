library(ggplot2)

# 取得元：　http://www.itdashboard.go.jp/Statistics/opendata
total.data = read.csv("total_mine.csv", encoding = "UTF-8")


# 更新頻度とリソース数の分布図
total.data.frequency.filter = total.data[total.data$frequency_of_update<100, c("dataset_id","publisher","group_title","frequency_of_update","language","year","data_format","resource_count")]
ggplot(total.data.frequency.filter, aes(x=frequency_of_update, y=resource_count)) +
  geom_point() + 
  theme_bw(base_family = "HiraKakuProN-W3") +
  geom_smooth(method="lm")

