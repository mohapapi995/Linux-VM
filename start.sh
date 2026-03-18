#!/bin/bash
echo "🛡️ Starting Professional VM Workspace..."

# প্রসেস ক্লিনআপ
pkill -f "filebrowser"
pkill -f "node -e"

# ১. Anti-Sleep Server (Port 7000) - ২৪ ঘণ্টা সচল রাখতে
nohup node -e "require('http').createServer((req, res) => { res.writeHead(200); res.end('VM Host Alive'); }).listen(7000, '0.0.0.0')" > /dev/null 2>&1 &

# ২. File Browser (Port 8000) - মোবাইল থেকে কোড এডিটের জন্য
# ইউজারনেম/পাসওয়ার্ড ছাড়া সরাসরি দেখার জন্য -r . (Root) ব্যবহার করা হয়েছে
nohup filebrowser -a 0.0.0.0 -p 8000 -r . > /dev/null 2>&1 &

echo "======================================================"
echo "📂 File Manager: https://port-8000-idx-xxx.cluster.idx.google.com"
echo "📡 Anti-Sleep: Active on Port 7000"
echo "💻 Run './vm.sh' in terminal to start your VM."
echo "======================================================"
