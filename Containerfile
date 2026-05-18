FROM fedora-toolbox

RUN rpm --import https://packages.microsoft.com/keys/microsoft.asc
RUN echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\nautorefresh=1\ntype=rpm-md\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo > /dev/null

COPY --link --from=ghcr.io/orhun/git-cliff/git-cliff	/usr/local/bin/git-cliff	/usr/local/bin/git-cliff

RUN dnf --assumeyes update
RUN dnf --assumeyes install \
	code \
	neovim \
	tmux \
	zsh

RUN dnf clean all

LABEL org.opencontainers.image.source=https://git.vsqd.xyz/geoffrey.lambeth/fedora-vscodebox
