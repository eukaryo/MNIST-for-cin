#include<iostream>
#include<vector>
#include<cassert>
using namespace std;

int main() {
	
	FILE *fp_in;
	freopen_s(&fp_in, "cin.txt", "r", stdin);

	int N, H, W;
	cin >> N >> H >> W;
	vector<int>label(N);
	for (int i = 0; i < N; i++)cin >> label[i];
	vector<vector<float>>image(N, vector<float>(H*W, 0.0));
	for (int i = 0; i < N; i++) {
		for (int j = 0; j < H*W; j++) {
			int p;
			cin >> p;
			if (p == 0) {
				int x;
				cin >> x;
				j += x - 1;
				continue;
			}
			image[i][j] = p / 255.0;
		}
		int a;
		cin >> a;
		assert(a == -1);
	}
	
	fclose(fp_in);
	
	for (int i = 0; i < H; i++) {
		for (int j = 0; j < W; j++) {
			cout << (image[0][i*W + j] ? "#" : " ");
		}
		cout << endl;
	}

	return 0;
}
