#### WHAT TO DO HERE
1. Analyse the data i.e., explore and understand the business objects
2. Do the data integration part where you build the business objects, choose dimension vs fact and rename the columns to friendly names so that the end users can understand them easily.
3. Validate the data integration checks
4. Document everything for the future use.
5. In data modelling, we have three different stages, the first stage is conceptual data model which focuses only on the entities and relationship between them. Does not focus on the details.
6. In second stage, we have logical data model where we focus on different columns and relationship between the tables with those columns.
7. In the last stage, we have a physical data model where we focus on storing those tables in the database like adding data types and so....
8. Conceptual data model -> Big Picture, Logical data model -> Blue Print, Physical data model -> Implementation


### STAR AND SNOWFLAKE SCHEMA
1. Star schema has only one central fact table and dimensions around it.
2. In snowflake schema, we have a fact table and dimensions around it, but the dimensions are again divided into mini dimensions and it appears to be a snowflake.
3. Dimensions gives us the descriptive information and facts gives us the real time events that happened at the point of time and it gives us the quantitative information representing the events.
4. Having connection between every table that we have is the mandatory step in the gold layer.
5. When we do joins, check if any duplicates are generated here.
6. If we have multiple systems and data is inconsitent between systems, then talk to the expert or business person and get to know the original source system and take it as the base.
7. Must give friendly and proper names to columns in gold layer.
8. Maintain the columns also in relevant order.
9. Decide if it is Dimension or Fact.
10. We select new primary keys in this layer called as the surrogate keys.
11. 