import 'package:flutter/material.dart';
import 'package:validators/validators.dart';

FormFieldValidator<String> validateUsername() {
  return (String? value) {
    if (value!.isEmpty) {
      return "공백이 들어갈 수 없습니다.";
    } else if (!isAlpha(value)) {
      return "이름에 한글이 들어갈 수 없습니다.";
    }
    return null;
  };
}

FormFieldValidator<String> validatePassword() {
  return (String? value) {
    if (value!.isEmpty) {
      return "공백이 들어갈 수 없습니다.";
    } else if (value.length > 22) {
      return "패스워드의 길이를 초과하였습니다.";
    }
    return null;
  };
}

FormFieldValidator<String> validateEmail() {
  return (String? value) {
    if (value!.isEmpty) {
      return "이메일은 공백이 들어갈 수 없습니다.";
    } else if (!isEmail(value)) {
      return "이메일 형식에 맞지 않습니다.";
    }
    return null;
  };
}

FormFieldValidator<String> validateTitle() {
  return (String? value) {
    if (value!.isEmpty) {
      return "제목은 공백이 들어갈 수 없습니다.";
    } else if (value.length > 30) {
      return "제목은 30자를 넘을 수 없습니다.";
    }
    return null;
  };
}

FormFieldValidator<String> validateContent(int maxLength) {
  return (String? value) {
    if (value!.isEmpty) {
      return "내용은 공백이 들어갈 수 없습니다.";
    } else if (value.length > maxLength) {
      return "제목은 $maxLength 자를 넘을 수 없습니다.";
    }
    return null;
  };
}
