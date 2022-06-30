from app.database import get_db


def output_formatter(results):
    out = []
    for result in results:
        user = {}
        user["last_name"] = result[0]
        user["first_name"] = result[1]
        user["hobbies"] = result[2]
        user["active"] = result[3]
        user["license_place"] = result[4]
        user["color"] = result[5]
        user["description"] = result[6]
        user["brand"] = result[7]
        user["model"] = result[8]
        out.append(user)
    return out
    
def generate_report():
    cursor = get_db().execute("""
        SELECT user.last_name,
        user.first_name,
        user.hobbies,
        user.active,
        vehicle.license_plate,
        vehicle.color,
        vehicle_type.description,
        vehicle.brand,
        vehicle.model
        FROM user
        INNER JOIN vehicle On user.id = vehicle.user_id
        INNER JOIN vehicle_type ON vehicle.v_type = vehicle_type.id
        """
    )
    results = cursor.fetchall()
    cursor.close()  
    return output_formatter(results)