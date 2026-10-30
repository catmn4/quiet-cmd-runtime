# quiet-cmd runtime

النسخة الجاهزة للتشغيل من quiet-cmd لبنية Linux x86_64.

تتضمن هذه النسخة:

- تطبيق quiet-cmd المبني مسبقًا.
- أداة `yt-dlp` الإصدار `2026.10.26` في `libraries/yt-dlp`.
- ملف `BINARY-VERSIONS.txt` الذي يتضمن إصدارات الملفات والبصمات SHA-256.
- سكربت التشغيل `run.sh`.

## التشغيل

```bash
chmod +x run.sh libraries/yt-dlp whatsapp-rust-bot
./run.sh
```

راجع `START-HERE.txt` قبل التشغيل واضبط ملف `.env` حسب الحاجة.
