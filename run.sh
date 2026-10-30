#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$(readlink -f "$0")")"

if [[ ! -x ./whatsapp-rust-bot ]]; then
  echo "خطأ: الملف التنفيذي whatsapp-rust-bot غير موجود أو ليس قابلًا للتنفيذ." >&2
  exit 1
fi
if [[ ! -x libraries/yt-dlp ]]; then
  echo "خطأ: نسخة yt-dlp المضمّنة في libraries/yt-dlp مفقودة أو ليست قابلة للتنفيذ." >&2
  exit 1
fi

if [[ ! -f .env && -z "${WHATSAPP_PHONE_NUMBER:-}" ]]; then
  echo "أنشئ ملف .env من .env.example وضع رقم الهاتف بصيغة دولية، أو عيّن WHATSAPP_PHONE_NUMBER في إعدادات الاستضافة." >&2
  exit 1
fi

exec ./whatsapp-rust-bot
