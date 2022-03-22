import java.math.BigInteger;

class Model {
  int m1;

  int e = 2;
  int d = 2;
  int k = 0;
  int x;

  int p = 61;
  int q = 31;
  int n = p*q;
  int R;
  int phi = (p-1)*(q-1);

  BigInteger c;
  BigInteger m;
  BigInteger r;
  BigInteger n1 = BigInteger.valueOf(p*q);
  int i =0;

  void setE() {
    while (phi % e != 1 && e > 1 && e < phi) {
      while (phi % e > 0) {
        R = e % phi;
        e = phi;
        phi = R;
      }
      e++;
    }
  }
  void setD() {
    d = (1+k*phi)/e;
    while (d % 1 != 0 || k == e || (k*e) % phi != 1) {

      d = (1+k*phi)/e;
      k++;
      //println("HEJ");
      println("k", k);
    }
    d = k;
  }

  void encrypt() {
    m = BigInteger.valueOf(key);
    r = m.pow(e);

    c = r.mod(n1);
  }
}
