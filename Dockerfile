FROM kingzhuky/meripseqpipe:dev
LABEL authors="Kaiyu Zhu, Xiaoqiong Bao, Zeyu Zhong" \
    description="Docker image containing all software requirements for the MeRIPseqPipe pipeline"

RUN conda create -n umitools -c https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/bioconda -c https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/conda-forge python=3.7.8 umi_tools=1.1.2 && conda clean -a

ENV PATH /opt/conda/envs/umitools/bin/:$PATH
