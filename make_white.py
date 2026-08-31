from PIL import Image

img = Image.open('c:/lumi/kfta/kfta-homepage/assets/kfta-location-map.png').convert('RGBA')
data = img.getdata()

new_data = []
# Get top-left pixel color to use as background reference
bg_color = data[0]

# Allow some tolerance for JPEG artifacts if any, though it's PNG
tolerance = 15
for item in data:
    if (abs(item[0] - bg_color[0]) < tolerance and
        abs(item[1] - bg_color[1]) < tolerance and
        abs(item[2] - bg_color[2]) < tolerance):
        # Replace with white
        new_data.append((255, 255, 255, 255))
    else:
        new_data.append(item)

img.putdata(new_data)
img.save('c:/lumi/kfta/kfta-homepage/assets/kfta-location-map.png')
print("Image background changed to white.")
