.set max_temp, 100  # set the max_temp limit

check temp:         #check_temp routine
    li t1, max_temp #check the max_temp limit into t1
    ble a0, t1, temp_ok #if a0 <= max_temp, then ok -- branch less than equal if a0 <= t1
    jal alarm       #Else, invoke the alarm routine
    temp_ok:
    ret             #Return from the routine