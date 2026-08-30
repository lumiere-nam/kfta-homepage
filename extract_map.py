import fitz # PyMuPDF
doc = fitz.open('C:/Users/남미화/.gemini/antigravity/brain/2013dd51-14f5-4423-91f4-f6ca0a5ee087/.tempmediaStorage/media_1788102758936.pdf')
# The map is likely on the last page or second to last.
page = doc[-1] # Try last page
pix = page.get_pixmap(dpi=300)
pix.save('c:/lumi/kfta/kfta-homepage/assets/high_res_map.png')
