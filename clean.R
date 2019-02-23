library(neo4r)

con <- neo4j_api$new(
  url = 'http://localhost:7474',
  user = 'neo4j',
  password = 'root'
)

con$get_index()
con$get_relationships()
con$get_labels()
con$get_constraints()

###### CLEAN DATABASE
clean <- c('DROP CONSTRAINT ON (p:Person) ASSERT p.name IS UNIQUE',
           'DROP CONSTRAINT ON (t:Team) ASSERT t.name IS UNIQUE', 
           'DROP CONSTRAINT ON (c:Country) ASSERT c.name IS UNIQUE',
           'DROP CONSTRAINT ON (g:Game) ASSERT g.name IS UNIQUE',
           'DROP CONSTRAINT ON (l:League) ASSERT l.name IS UNIQUE',
           'MATCH (n) DETACH DELETE n')
purrr::map(clean, call_neo4j, con = con)
