# -*- coding: utf-8 -*-
"""
Created on Fri Jul 31 15:10:08 2020

@author: CPB10N
"""
from keras.models import Sequential
from keras.layers.core import Dense
from sklearn.preprocessing import LabelEncoder
from sklearn.model_selection import train_test_split

import pandas as pd
import numpy as np
import tensorflow as tf
import matplotlib.pyplot as plt 

seed = 9
np.random.seed(seed)
tf.random.set_seed(seed)

df = pd.read_excel('./movie_score_re.xlsx')

dataset = df.values
X = dataset[:, 2:8]
Y = dataset[:, 1]

mean_x = X.mean(axis=0)
X_data = X - mean_x
std_x = X_data.std(axis=0)
X_data /= std_x

mean_y = Y.mean(axis=0)
Y_data = Y - mean_y
std_y = Y_data.std(axis=0)
Y_data /= std_y 

X_train, X_test, Y_train, Y_test = train_test_split(X_data, Y_data, test_size=0.25, random_state=seed)


model = Sequential()
model.add(Dense(40, input_dim=6, activation='relu'))
model.add(Dense(26, activation='relu'))
model.add(Dense(10, activation='relu'))
model.add(Dense(1))

model.compile(loss='mean_squared_error', optimizer='adam', metrics=['MAE'])


model.fit(X_train, Y_train, epochs=300, batch_size=20)

Y_prediction = model.predict(X_test).flatten()

Y_pre = (Y_prediction * std_y) + mean_y
Y_t = (Y_test * std_y) + mean_y

for i in range(10):
    label = '{:,}'.format(abs(int(Y_t[i])))
    prediction = '{:,}'.format(abs(int(Y_pre[i])))
    print("실제관객 : %s 명, 예상관객 : %s 명"%(label, prediction))

