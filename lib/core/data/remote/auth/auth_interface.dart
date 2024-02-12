abstract class AuthInterface {
  login(){}
  signUp(){}
}


abstract class AuthRepository implements AuthInterface{}

abstract class AuthService implements AuthInterface{}