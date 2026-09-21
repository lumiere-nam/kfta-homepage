import re

with open('c:\\lumi\\kfta\\kfta-homepage\\shop.html', 'r', encoding='utf-8') as f:
    content = f.read()

# 1. Delete "다시, 옷 입는 시간" and "패션 테라피 안내서"
# The user wants to delete the book "다시, 옷 입는 시간" and "패션 테라피 안내서". It seems "다시, 옷 입는 시간 패션 테라피 안내서" is one book or two books.
# Let's find `<div class="flex flex-col text-center items-center group">` that contains "다시, 옷 입는 시간"
content = re.sub(r'<div class="flex flex-col text-center items-center group">\s*<img[^>]*alt="다시, 옷 입는 시간"[^>]*>\s*<h4[^>]*>다시, 옷 입는 시간</h4>\s*<p[^>]*>.*?</p>\s*<a[^>]*>.*?</a>\s*</div>', '', content, flags=re.DOTALL)

# Delete subtitles for Level 2, Level 3, Trainer, Master
content = content.replace('마음을 읽는 기준', '')
content = content.replace('내면의 통합과 완성', '')
content = content.replace('타인을 이끄는 리더쉽과', '')
content = content.replace('패션테라피 교육 전문가', '')
# If those left empty <p> tags like `<p class="..."> </p>`, that's fine, or we can clean them up:
content = re.sub(r'<p class="text-sm text-gray-500 mb-6 flex-grow">\s*</p>', '<p class="text-sm text-gray-500 mb-6 flex-grow"></p>', content)

# "감정 다이어리와 바디실루엣, 소재 팔레트, 패션이미지 카드부터 네크라인 진단천까지 모두 준비중으로 표시해줘."
# We will replace their '구매하기' link with a '준비중' span.
# Items to match in the title:
targets = [
    '감정 다이어리',
    '바디 실루엣',
    '바디실루엣',
    '소재 팔레트',
    '패션이미지 카드',
    '패션 이미지 카드',
    '네크라인 진단천'
]

# We can search for the divs representing these cards. 
# They are under `<div class="bg-white rounded-xl border border-gray-200 overflow-hidden flex flex-col group">` or similar
# Let's use a regex to match the item blocks.
# In shop.html, therapy tools look like:
# <div class="bg-white rounded-xl border border-gray-200 overflow-hidden flex flex-col group hover:shadow-xl transition-all duration-300 hover:-translate-y-1">
#   <div class="...">
#       ...
#   </div>
#   <div class="p-5 flex flex-col flex-grow">
#       <h4 class="font-bold text-gray-800 text-sm mb-1">패션 감정 다이어리</h4>...
#       <a href="checkout.html?item=..." class="...">구매하기</a>
#   </div>
# </div>

def replace_buy_button(match):
    block = match.group(0)
    for target in targets:
        if target in block:
            # Replace the <a>...구매하기</a> with a span
            block = re.sub(
                r'<a href="[^"]+" class="([^"]+) bg-kftaRed hover:bg-red-900 ([^"]+)">.*?</a>',
                r'<span class="\1 bg-gray-400 \2 cursor-not-allowed">준비중</span>',
                block
            )
            # Some might have 'bg-kftaGreen' instead of 'bg-kftaRed' or not have hover:bg-red-900, let's be more generic:
            block = re.sub(
                r'<a href="[^"]+" class="([^"]+) bg-[a-zA-Z0-9-]+ hover:bg-[a-zA-Z0-9-]+ ([^"]+)">.*?</a>',
                r'<span class="\1 bg-gray-400 \2 cursor-not-allowed">준비중</span>',
                block
            )
            
            # Simplified generic replacement:
            block = re.sub(
                r'<a href="checkout[^"]*" class="block w-full text-center bg-kftaRed hover:bg-red-900 text-white font-bold py-2 rounded transition-colors text-sm">.*?</a>',
                r'<span class="block w-full text-center bg-gray-400 text-white font-bold py-2 rounded text-sm cursor-not-allowed">준비중</span>',
                block
            )
    return block

# The regex matches a whole card for therapy tools
content = re.sub(
    r'<div class="bg-white rounded-xl border border-gray-200 overflow-hidden flex flex-col group hover:shadow-xl transition-all duration-300 hover:-translate-y-1">.*?</div>\s*</div>',
    replace_buy_button,
    content,
    flags=re.DOTALL
)

with open('c:\\lumi\\kfta\\kfta-homepage\\shop.html', 'w', encoding='utf-8') as f:
    f.write(content)
