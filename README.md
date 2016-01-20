# Solr

Utilisation uniquement pour docker-compose avec un Makefile

### Création d'un core Solr

# Dans le docker-compose
```
solr:
  image: sebstinkeste/solr:5.4
  volumes:
    - /opt/solr
  environment:
    SOLR_CORE: "core_name"   
    PORT: "8983"
```

# création du core
```
make solrcore
```

# commande du Makefile

```
solrcore:
	@docker exec -it $(PROJECT_NAME)_solr_1 sh -c 'exec  bin/solr create -c "$$SOLR_CORE" -p "$$PORT"'
```