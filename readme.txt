Proyecto de Software

Aplicación para la cátedra de Proyecto de Software de la Facultad de Informática de la U.N.L.P.

Codigo interpretado

	https://grupo11.proyecto2019.linti.unlp.edu.ar/home

Iniciar ambiente

	Requisitos
	python3
	virtualenv
	phpmyadmin

Ejecución

	$ virtualenv -p python3 venv
	# Para iniciar el entorno virtual
	$ . venv/bin/activate
	# Instalar las dependencias dentro del entorno virtual
	$ pip install -r requirements.txt
	# En el directorio raiz
	$ FLASK_ENV=development python run.py

Para salir del entorno virutal, ejecutar:

	$ deactivate

Estructura de carpetas del proyecto
	config            # Módulo de donde se obtienen las variables de configuración
	helpers           # Módulo donde se colocan funciones auxiliares para varias partes del código
	models            # Módulo con la lógica de negocio de la aplicación y la conexión a la base de datos
	resources         # Módulo con los controladores de la aplicación (parte web)
	templates         # Módulo con los templates
	db.py             # Instancia de base de datos
	__init__.py       # Instancia de la aplicación y ruteo