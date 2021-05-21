submitted_email = params[:email] #sree@gmail.com
submitted_password = params[:password] #qwertyui

u = User.find_by(email: submitted_email)
salt = u.password_digest[0..2]
hashed_salted_password = u.password_digest[3..-1]

if hashed_salted_password == hash(submitted_password, salt)

    #Give Access
else
    #No Access
end

def hash(plain_password, salt)
.....
    return hashed_salted-password
end

def encrypt(plain_password)

    ......
end


def decrypt(encrypted_password)

    ......
end