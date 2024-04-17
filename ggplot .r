# Load the necessary library
> library(ggplot2)
> 
> # Assuming 'Housing' is your data frame and it has columns 'price', 'area', and 'furnishingstatus'
> ggplot(Housing, aes(x = area, y = price, color = furnishingstatus)) +
+     geom_point() +
+     labs(title = "Housing Prices by Area and furnishingstatus",
+          x = "Area",
+          y = "Price",
+          color = "furnishingstatus") +
+     theme_minimal()
> 
> ggplot(Housing, aes(x = furnishingstatus, y = price)) +
+     geom_bar(stat = "summary", fun = "mean", fill = "cyan", color = "black") +
+     labs(title = "Average Housing Prices by Furnishing Status",
+          x = "Furnishing Status",
+          y = "Average Price") +
+     theme_minimal()
> 
> 
> 
> ggplot(Housing, aes(x = date, y = price, group = furnishingstatus, color = furnishingstatus)) +
+     geom_line() +
+     labs(title = "Housing Price Trend Over Time by Furnishing Status",
+          x = "Time",
+          y = "Price") +
+     theme_minimal()
