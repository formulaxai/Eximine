from cryptography.hazmat.backends import default_backend
from cryptography.hazmat.primitives import hashes
tasty_salt = b'some tasty salt to help us digest that password'
def hashPassword(password):
  digest = hashes.Hash(hashes.SHA256(), backend=default_backend())
  digest.update(str.encode(password))
  digest.update(tasty_salt)
  return digest.finalize()


def verifyPassword(input_password,hashed_password):#get hashed_password from your user model
  digest = hashes.Hash(hashes.SHA256(), backend=default_backend())
  digest.update(str.encode(input_password))
  digest.update(tasty_salt)
  return digest.finalize() == hashed_password

# print(verifyPassword('password',hashPassword('password')))