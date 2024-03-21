echo "alias ll='ls -halF'" >> ~/.bashrc
echo "alias doosh='du -h --max-depth=1 | sort -h'" >> ~/.bashrc
echo "alias ll='ls -halF'" >> ~/.zshrc
echo "alias doosh='du -h --max-depth=1 | sort -h'" >> ~/.zshrc

cat ~/.zshrc | sed -e "s/plugins=(git)/plugins=(git poetry)/" > ~/temp
cat ~/temp > ~/.zshrc

poetry config virtualenvs.in-project true
poetry install