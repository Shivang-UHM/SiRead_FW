import numpy
from scipy.optimize import curve_fit
import pandas as pd

def gauss(x, *p):
    A, mu, sigma = p
    return A*numpy.exp(-(x-mu)**2/(2.*sigma**2))

def gauss_fit(x,y, p0):
    #print(axisNames)
    try:
        coeff, var_matrix = curve_fit(gauss,x, y, p0=p0)
    except:
        return  0 , 0 ,0
    return coeff[1], coeff[2],coeff[0]

def group_apply(df, groupAxis, output_axis, func, input_axis, *args, **kwargs):
    def wrapped_fun(df, input_axis,*args, **kwargs):
        df_input = [df[x].to_numpy() for x in input_axis]
        return func(*df_input, *args, **kwargs)
    df1 = df.groupby(groupAxis).apply(wrapped_fun, input_axis, *args, **kwargs)  
    dummyVariableName = 'internal_dummy_name'
    df2 = df1.reset_index(name=dummyVariableName)
    df2[output_axis] = pd.DataFrame(df2[dummyVariableName].to_list(), columns=output_axis)
    df2 = df2.drop([dummyVariableName],axis=1)
    return df2

def group_apply3(df, groupAxis, output_axis, func, input_axis, *args, **kwargs):
    def wrapped_fun(df, input_axis,*args, **kwargs):
        df_input = df[input_axis]
        return func(df_input, *args, **kwargs)
    df1 = df.groupby(groupAxis).apply(wrapped_fun, input_axis, *args, **kwargs)  
    dummyVariableName = 'internal_dummy_name'
    df2 = df1.reset_index(name=dummyVariableName)
    df2[output_axis] = pd.DataFrame(df2[dummyVariableName].to_list(), columns=output_axis)
    df2 = df2.drop([dummyVariableName],axis=1)
    return df2