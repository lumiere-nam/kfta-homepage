import os
import json
from google import genai
from google.genai import types

# Initialize client
client = genai.Client()

image_paths = [
    r"C:\Users\남미화\.gemini\antigravity\brain\2013dd51-14f5-4423-91f4-f6ca0a5ee087\.user_uploaded\media_1788176954103.png",
    r"C:\Users\남미화\.gemini\antigravity\brain\2013dd51-14f5-4423-91f4-f6ca0a5ee087\.user_uploaded\media_1788176968671.png",
    r"C:\Users\남미화\.gemini\antigravity\brain\2013dd51-14f5-4423-91f4-f6ca0a5ee087\.user_uploaded\media_1788176987894.png",
    r"C:\Users\남미화\.gemini\antigravity\brain\2013dd51-14f5-4423-91f4-f6ca0a5ee087\.user_uploaded\media_1788177002940.png",
    r"C:\Users\남미화\.gemini\antigravity\brain\2013dd51-14f5-4423-91f4-f6ca0a5ee087\.user_uploaded\media_1788177062906.png"
]

prompt = \"\"\"
Extract all the text from this infographic image and structure it as a JSON object.
Follow this schema exactly:
{
    "level_title": "string",
    "subtitle": "string",
    "description": "string",
    "target_audience": ["string", "string"],
    "three_pillars": [
        {"title": "과정 개요", "points": ["string"]},
        {"title": "핵심 커리큘럼", "points": ["string"]},
        {"title": "기대효과 및 목표", "points": ["string"]}
    ],
    "curriculum_weeks": [
        {"week": "1주", "element": "string", "detail": "string"}
    ],
    "benefits": ["string"],
    "summary": {
        "certification_name": "string",
        "capacity": "string",
        "duration": "string",
        "method": "string",
        "price": "string",
        "completion_condition": "string",
        "target": "string",
        "contact": "string"
    },
    "process": "string",
    "faq": [
        {"q": "string", "a": "string"}
    ],
    "next_step": "string"
}
Output ONLY valid JSON. No markdown backticks.
\"\"\"

results = []

for i, path in enumerate(image_paths):
    print(f"Processing image {i+1}...")
    try:
        myfile = client.files.upload(file=path)
        response = client.models.generate_content(
            model='gemini-2.5-pro',
            contents=[myfile, prompt]
        )
        json_text = response.text.strip()
        if json_text.startswith("`json"):
            json_text = json_text[7:-3]
        elif json_text.startswith("`"):
            json_text = json_text[3:-3]
            
        with open(f"level_{i+1}_data.json", "w", encoding="utf-8") as f:
            f.write(json_text.strip())
        print(f"Saved level_{i+1}_data.json")
    except Exception as e:
        print(f"Error on image {i+1}: {e}")

