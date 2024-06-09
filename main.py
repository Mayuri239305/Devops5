from fastapi import FastAPI,Request

app = FastAPI()

@app.get("/")
def home():
    return {"home page"}


@app.get('/login')
def login(username:str,password:str):
    if username == "Mayuri" and password == "abc123":
        return{'data':'this is login page'}
    else:
        return{'login failure'}
    
    
@app.post('/login')
def login_post(request :Request):
    print(request.headers)
    print(request.body)