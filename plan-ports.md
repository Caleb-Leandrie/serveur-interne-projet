Service	            Image	                 Port interne	Port publié sur l'hôte   Justification   
Portail	            nginx:1.27-alpine	     80	            8080	                 80 souvent pris, 8080 libre
Base de données	    mysql:8.4	             3306	        3307	                 3306 parfois occupé, on décale
Adminer	            adminer:4.8.1	         8080	        8081	                 8081 libre
Grafana	            grafana/grafana:11.2.0	 3000	        3000	                 3000 rarement pris

