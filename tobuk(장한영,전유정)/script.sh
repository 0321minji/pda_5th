#!/bin/bash

# Git 브랜치 전환
echo "Switching to 'tobuk' branch..."
git switch tobuk

# 작업 디렉토리 이동
echo "Changing directory to 'pda_5th'..."
cd pda_5th || { echo "Directory 'pda_5th' not found."; exit 1; }

# 시스템 업데이트
echo "Updating system..."
sudo apt update -y

# python3-venv 설치
echo "Installing python3-venv..."
sudo apt install python3-venv -y

# 가상 환경 생성
echo "Creating Python virtual environment 'myenv'..."
python3 -m venv myenv

# 가상 환경 활성화
echo "Activating virtual environment 'myenv'..."
source myenv/bin/activate

# 필요한 패키지 설치
echo "Installing required Python packages..."
pip3 install requests beautifulsoup4 numpy psutil

# test.py 실행
echo "Running test.py..."
python test.py

# 스크립트 완료 메시지
echo "Script execution completed."

