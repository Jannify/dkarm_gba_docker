FROM dkarm_base:local

# install basic deps
RUN apt install -y \
    # for building
    cmake \
    # for scripting
    bash \
    # for Python 3
    python3 python3-pip \
    # for devkitpro
    dpkg \
    # clean up
    && apt clean

RUN ln -s /usr/bin/python3 /usr/bin/python

# install crunch
RUN git clone https://github.com/redthing1/crunch.git /tmp/crunch && cd /tmp/crunch \
    && mkdir build && cd build && cmake .. && make -j$(nproc) && cp crunch_gen $DKP_TOOLS_PATH

# install tiled2gba
RUN git clone https://github.com/redthing1/Tiled2GBA.git /tmp/tiled2gba && cd /tmp/tiled2gba/converter \
    && mkdir build && cd build && cmake .. && make -j$(nproc) && cp Tiled2GBA $DKP_TOOLS_PATH

# install nelua
RUN git clone https://github.com/edubart/nelua-lang.git /tmp/nelua-lang && cd /tmp/nelua-lang \
    && make && make install

# install dlang
# RUN wget https://downloads.dlang.org/releases/2022/dmd_2.100.2-0_amd64.deb -O /tmp/dlang_dmd.deb && apt install -y /tmp/dlang_dmd.deb
RUN curl -fsS https://dlang.org/install.sh | bash -s install ldc-1.30.0 \
  && echo "source ~/dlang/ldc-1.30.0/activate" >> ~/.bashrc
