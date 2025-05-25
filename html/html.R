library(rvest)
webpage = read_html("https://en.wikipedia.org/wiki/COVID-19_pandemic")
webpage

download.file("https://en.wikipedia.org/wiki/COVID-19_pandemic",destfile = "covid.html")
html_node = read_html("covid.html")
body_node = html_node(root_node, 'body')
p_node = html_node(body_node, 'p')
p_content = html_text(p_node)

df = html_table(table_node)
head(df)



library(rvest) 

# Read the HTML content of the website 
webpage <- read_html("https://en.wikipedia.org/wiki/COVID-19_pandemic") 

# Select the table using CSS selector 
table_node <- html_nodes(webpage, "table") 

# Extract the table content 
table_content <- html_table(table_node)[[2]] 

# Print the table 
head(table_content)
