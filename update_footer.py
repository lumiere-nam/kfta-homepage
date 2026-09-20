import re
import glob

new_footer = """                <h2 class="font-serif text-3xl text-white mb-2 tracking-widest">캄온(calm:on)</h2>
                <p class="font-bold text-white/90">패션테라피 교육 브랜드 - 한국패션테라피협회 (KFTA)</p>"""

for file in glob.glob('*.html'):
    with open(file, 'r', encoding='utf-8') as f:
        html = f.read()

    html = re.sub(
        r'<h2 class="font-serif text-3xl text-white mb-2 tracking-widest">KFTA</h2>\s*<p class="font-bold text-white/90">한국패션테라피협회</p>',
        new_footer,
        html,
        flags=re.MULTILINE
    )

    # I should also update the copyright year text just in case:
    html = re.sub(
        r'&copy; 2026 Korea Fashion Therapy Association\.',
        r'&copy; 2026 calm:on / Korea Fashion Therapy Association.',
        html
    )

    with open(file, 'w', encoding='utf-8') as f:
        f.write(html)
