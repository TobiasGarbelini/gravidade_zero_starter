def factory_valid_pix():
    pix={
        "bank":"Nubank",
        "key": "32948585618",
        "value":"100"

    }
    return pix

def factory_zero_pix():
    pix={
        "bank":"Neon",
        "key": "32948585618",
        "value":"0",
        "message":"Oops. Transferir ZERO é osso hein..."
    }
    return pix

def factory_negative_pix():
    pix={
        "bank":"Next",
        "key": "32948585618",
        "value":"-1",
        "message":"Oops. Valor para PIX incorreto..."
    }
    return pix