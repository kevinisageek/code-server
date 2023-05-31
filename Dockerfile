FROM codercom/code-server

# base packages
RUN sudo apt update && sudo apt install -y wget build-essential

# install Rust
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | export RUSTUP_HOME=/usr/local/rust sh 

# install latest Go
#RUN wget -q -c "https://dl.google.com/go/$(curl https://golang.org/VERSION?m=text).linux-amd64.tar.gz" -O - | sudo tar xvz -C /usr/local

ENV PATH="/usr/local/go/bin:${PATH}"
