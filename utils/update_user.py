import requests

URL = "http://127.0.0.1:5000/users/"

def update_user(user_data, id):

    response = requests.put(URL+id, json=user_data)

    if response.status_code == 204:
        print("User successfully updated.")
    else:
        print("Error: User was not updated.")

if __name__ == "__main__":
    print("UPDATE USER")
    print("-" * 20)

    first = input("Enter the new first name: ")
    last = input("Enter the new last name: ")
    hobbies = input("Enter the new hobbies: ")
    id = input("Enter the id of the record you want to update: ")
    
    if not id:
        print("Error: Please enter a valid id")
    else:
        user_data = {
            "first_name": first,
            "last_name": last,
            "hobbies": hobbies
        }

        update_user(user_data, id)


