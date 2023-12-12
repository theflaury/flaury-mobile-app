class SignUpWithEmailAndPasswordFailure {
  final String message;
  const SignUpWithEmailAndPasswordFailure([this.message = "An unknown error occurred."]);

factory SignUpWithEmailAndPasswordFailure.code(String code){
  switch(code){
    case 'weak-password':
      return const SignUpWithEmailAndPasswordFailure(
        'The password provided is too weak.',
      );
    case 'email-already-in-use':
      return const SignUpWithEmailAndPasswordFailure(
        'The account already exists for that email.',
      );
    case 'invalid-email':
      return const SignUpWithEmailAndPasswordFailure(
        'Email is not valid.',
      );
    case 'operation-not-allowed':
      return const SignUpWithEmailAndPasswordFailure(
        'Operation is not allowed.',
      );
    case 'user-disabled':
      return const SignUpWithEmailAndPasswordFailure(
        'This user has been disabled.',
      );
    default:
      return const SignUpWithEmailAndPasswordFailure();
  }
}
}