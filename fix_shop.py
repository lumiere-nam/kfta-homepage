import re

with open('shop.html', 'r', encoding='utf-8') as f:
    content = f.read()

# 1. 컬러 진단천 (shop_fabric_mod.jpg)
# Look for the card containing '컬러 진단천'
content = re.sub(
    r'<div class="bg-gray-100 h-40 rounded-xl mb-4 flex items-center justify-center text-gray-400 shadow-inner">이미지 준비중</div>\s*<h4 class="font-bold text-gray-800 text-sm mb-4 flex-grow">컬러 진단천</h4>',
    r'<img src="assets/shop_fabric_mod.jpg" alt="컬러 진단천" class="w-full h-40 object-cover rounded-xl mb-4 shadow-inner"><h4 class="font-bold text-gray-800 text-sm mb-4 flex-grow">컬러 진단천</h4>',
    content
)

# 2. 컬러 진단보드 (shop_face_board_mod.jpg)
# Might have been accidentally replaced by shop_lip_board_mod.jpg. Let's fix it.
content = re.sub(
    r'<img src="assets/shop_lip_board_mod.jpg" alt="컬러 진단보드" class="w-full h-40 object-cover rounded-xl mb-4 shadow-inner"><h4 class="font-bold text-gray-800 text-sm mb-4 flex-grow">컬러 진단보드</h4>',
    r'<img src="assets/shop_face_board_mod.jpg" alt="컬러 진단보드" class="w-full h-40 object-cover rounded-xl mb-4 shadow-inner"><h4 class="font-bold text-gray-800 text-sm mb-4 flex-grow">컬러 진단보드</h4>',
    content
)
# Just in case it's still "이미지 준비중"
content = re.sub(
    r'<div class="bg-gray-100 h-40 rounded-xl mb-4 flex items-center justify-center text-gray-400 shadow-inner">이미지 준비중</div>\s*<h4 class="font-bold text-gray-800 text-sm mb-4 flex-grow">컬러 진단보드</h4>',
    r'<img src="assets/shop_face_board_mod.jpg" alt="컬러 진단보드" class="w-full h-40 object-cover rounded-xl mb-4 shadow-inner"><h4 class="font-bold text-gray-800 text-sm mb-4 flex-grow">컬러 진단보드</h4>',
    content
)

# 3. 립컬러 진단보드 (shop_lip_board_mod.jpg)
# Just in case it's still "이미지 준비중"
content = re.sub(
    r'<div class="bg-gray-100 h-40 rounded-xl mb-4 flex items-center justify-center text-gray-400 shadow-inner">이미지 준비중</div>\s*<h4 class="font-bold text-gray-800 text-sm mb-4 flex-grow">립컬러 진단보드</h4>',
    r'<img src="assets/shop_lip_board_mod.jpg" alt="립컬러 진단보드" class="w-full h-40 object-cover rounded-xl mb-4 shadow-inner"><h4 class="font-bold text-gray-800 text-sm mb-4 flex-grow">립컬러 진단보드</h4>',
    content
)

with open('shop.html', 'w', encoding='utf-8') as f:
    f.write(content)
