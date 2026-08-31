import fitz # PyMuPDF
doc = fitz.open('C:/Users/남미화/.gemini/antigravity/brain/2013dd51-14f5-4423-91f4-f6ca0a5ee087/.tempmediaStorage/media_1788102758936.pdf')
for i in range(len(doc)):
    text = doc[i].get_text()
    if 'History' in text or '연혁' in text or '히스토리' in text or 'HISTORY' in text:
        print(f"--- Page {i+1} ---")
        print(text)
