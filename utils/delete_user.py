import requests

URL = "http://127.0.0.1:5000/users/"

def delete_user(id):
    response = requests.delete(URL+id)

    if response.status_code == 204:
        print("User was removed.")
    else:
        print("Error:  User was not removed.")

if __name__ == "__main__":
    print("DELETE USER")
    print("-" * 20)

    user_id = input("User id to delete: ")

    if not user_id:
        print("Error, please enter an id.")
    else:
        delete_user(user_id)