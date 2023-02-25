@REM Crear Carpeta
mkdir nombre carpeta

@REM Virtual Machine
virtualenv venv
source venv/bin/activate

@REM (Backend-Python) main.py 
pip install waitress
pip install flask
pip install flask_cors