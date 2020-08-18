#include <iostream>
#include "unistd.h"

using namespace std;

int main(void) {
	int num;
	cout << "いつまでアホになりますか？>";
	cin >> num;
	for(int i=1; i<=num; i++){
		cout << i;
		if(i%3 == 0 || i%10 == 3 || i/10 == 3)
			cout << "(アホな声)";
		cout << endl;
		usleep(1e6);
	}
	return 0;
}
