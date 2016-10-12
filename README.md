# MNIST-for-cin
1行目には、画像の数N、縦のピクセル数H、横のピクセル数Wがスペース区切りで与えられる。

続くN行には、各画像のラベルL_i(0<=i<N)が与えられる。

続くN行には、各画像のピクセル値p(0<=p<256,pは整数)を示す整数列がスペース区切りで与えられる。
MNIST画像では0のピクセルが多いので、0についてのみランレングス圧縮してある。すなわち、与えられた数列中に0が存在する場合、それは0の次の数字だけ0が連続していることを示す。(e.g. {1, 0, 3, 4}という入力をデコードすると{1, 0, 0, 0, 4}になる)
画像の終わりは-1で示される。-1の直後に改行がある。-1を除いてデコードすると、1行あたりH*W項の数列が得られる。その数列の第i項は画像の(i/H,i%W)座標に相当する。ただし左上が(0,0)で右下が(H-1,W-1)とする。

This is the Copyright of the MNIST dataset:

Yann LeCun (Courant Institute, NYU) and Corinna Cortes (Google Labs, New York) 
hold the copyright of MNIST dataset, which is a derivative work from original 
NIST datasets. MNIST dataset is made available under the terms of the 
Creative Commons Attribution-Share Alike 3.0 license.

More information can be found here:
http://www.pymvpa.org/datadb/mnist.html
