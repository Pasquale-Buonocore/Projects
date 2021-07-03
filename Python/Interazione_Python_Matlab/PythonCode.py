import matlab.engine
import subprocess
import time
import os

# Try to use an already matlab opened process instead of opening a new matlab instance.
# Run matlab.engine.shareEngine in Matlab to allow the sharing process.
engs = matlab.engine.find_matlab()

# If a running Matlab process is not available, start matlab
if len(engs) < 1:

    # Open a MATLAB session using the bat file
    MatlabProcess = os.path.abspath('LaunchMatlabSession\Launch_Matlab.bat')
    subprocess.call(MatlabProcess)

    # Find the just started MATLAB process process
    while (not engs):
        engs = matlab.engine.find_matlab()
        time.sleep(0.1)

print("The matlab session is: " + engs[0])

# Define the Matlab engine
eng = matlab.engine.connect_matlab(engs[0])

# Call the function StampaPippo which has to be in the MATLAB folder.
# This powerful interaction allows us to use MATLAB function and re-use its result in python.
pippo = eng.StampaPippo(2)
print(str(pippo))
