ARG fedora_version
FROM registry.fedoraproject.org/fedora-toolbox:${fedora_version}

RUN rpm --import https://packages.microsoft.com/keys/microsoft.asc
RUN echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\nautorefresh=1\ntype=rpm-md\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo > /dev/null

RUN dnf --assumeyes update
RUN dnf --assumeyes install code neovim zsh
RUN dnf clean all
