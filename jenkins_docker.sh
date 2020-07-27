echo "Docker Build Automation Started!"

# Stage 0
# Git Checkout
# echo "Stage 0: Git Checkout"
# git clone https://github.com/maheshgprasad/docker


# Stage 1
# List all the contents of the Git Checkout file
echo "Stage 1: Listing all the contents of the directory"
ls -l

# Stage 2
# Open the Directory from Git Checkout
echo "Stage 2: Open the Executable Directory"
cd Docker_Applications
ls -l

# Stage 3a
# Building the first Docker Application
echo "Stage 3a:Building the First Docker Application"
cd HVR_Mobility
sudo docker build -t hvrmobility .
sudo docker run -d -p 3030:3030 hvrmobility
cd ..

# Stage 3b
# Building the Second Docker Application
echo "Stage 3b: Building the Second Docker Application"
cd application_mqtt_subscriber
sudo docker build -t mqttsub .
sudo docker run -d -p 3000:3000 mqttsub
cd ..

# Stage 4
# Checking whether the images for availability
echo "Stage4: Checking image availability"
sudo docker images | grep hvrmobility
sudo docker images | grep mqttsub

# Stage 5
# Build and Run Complete
echo "Stage 4:Build and Run Complete"
echo "Success!"
