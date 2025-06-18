import requests
import os

api_key = os.environ["API_KEY"]
URL = "http://api.weatherapi.com/?"
city = "Paris"


def get_weather() -> None:
    # write your code here
    # print(URL + "key=" + api_key + "&q=" + city  )
    response = requests.get(URL + "key=" + api_key + "&q=" + city)
    print(response)


if __name__ == "__main__":
    get_weather()
