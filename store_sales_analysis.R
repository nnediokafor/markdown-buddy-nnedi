# Store Sales Analysis
# This script creates and analyzes a small synthetic store sales dataset.

# Create the synthetic dataset
store_data <- data.frame(
  Store = c("Store A", "Store B", "Store C", "Store D", "Store E"),
  Store_Area = c(1500, 1850, 2200, 1700, 2500),
  Items_Available = c(1200, 1500, 1800, 1350, 2100),
  Daily_Customer_Count = c(180, 220, 260, 205, 310),
  Daily_Sales = c(5400, 6600, 7800, 6150, 9300)
)

# View the dataset
print(store_data)

# Display the structure of the dataset
str(store_data)

# Display summary statistics
summary(store_data)

# Calculate total daily sales
total_sales <- sum(store_data$Daily_Sales)
print(paste("Total Daily Sales:", total_sales))

# Calculate average daily sales
average_sales <- mean(store_data$Daily_Sales)
print(paste("Average Daily Sales:", average_sales))

# Find the store with the highest daily sales
highest_sales_store <- store_data[which.max(store_data$Daily_Sales), ]
print("Store with the highest daily sales:")
print(highest_sales_store)

# Find the store with the highest customer count
highest_customer_store <- store_data[which.max(store_data$Daily_Customer_Count), ]
print("Store with the highest daily customer count:")
print(highest_customer_store)

# Calculate average sales per customer for each store
store_data$Sales_Per_Customer <- store_data$Daily_Sales / store_data$Daily_Customer_Count

print("Dataset with Sales Per Customer:")
print(store_data)

# Create a bar chart of daily sales by store
barplot(
  store_data$Daily_Sales,
  names.arg = store_data$Store,
  main = "Daily Sales by Store",
  xlab = "Store",
  ylab = "Daily Sales"
)

# Create a scatter plot showing store area and daily sales
plot(
  store_data$Store_Area,
  store_data$Daily_Sales,
  main = "Store Area vs Daily Sales",
  xlab = "Store Area",
  ylab = "Daily Sales",
  pch = 19
)

# Calculate correlation between store area and daily sales
area_sales_correlation <- cor(store_data$Store_Area, store_data$Daily_Sales)
print(paste("Correlation between Store Area and Daily Sales:", round(area_sales_correlation, 3)))

# Calculate correlation between customer count and daily sales
customer_sales_correlation <- cor(
  store_data$Daily_Customer_Count,
  store_data$Daily_Sales
)
print(paste(
  "Correlation between Daily Customer Count and Daily Sales:",
  round(customer_sales_correlation, 3)
))

# Simple conclusion
print("Analysis complete.")
