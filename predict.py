import json
import cv2
from keras.models import load_model

model = load_model('my_h5_model.h5')
image = cv2.imread("test.jpg", 0)
img = cv2.resize(image, (28, 28))
pred = model.predict(img.reshape(1, 28, 28, 1))
print(pred.argmax())

test_result = {
	"the prdicted nmber is": int(pred.argmax())
}

with open('result.json', 'w') as predict_result:
	json.dump(test_result, predict_result)
