

import '../../constant/ps_constants.dart';
import '../common/ps_holder.dart';


class LanguageParameterHolder extends PsHolder<dynamic> {
  LanguageParameterHolder() {
    keyword = '';
    orderBy = PsConst.FILTERING__SYMBOL;
    orderType = PsConst.FILTERING__ASC;
  }

  String? keyword;
  String? orderBy;
  String? orderType;

  LanguageParameterHolder getDefaultParameterHolder() {
    keyword = '';
    orderBy = PsConst.FILTERING__SYMBOL;
    orderType = PsConst.FILTERING__ASC;

    return this;
  }

  @override
  Map<String, dynamic> toMap() {
    final Map<String, dynamic> map = <String, dynamic>{};

    map['keyword'] = keyword;
    map['order_by'] = orderBy;
    map['order_type'] = orderType;

    return map;
  }

  @override
  dynamic fromMap(dynamic dynamicData) {
    keyword = '';
    orderBy = PsConst.FILTERING__SYMBOL;
    orderType = PsConst.FILTERING__ASC;

    return this;
  }

  @override
  String getParamKey() {
    String key = '';

    if (keyword != '') {
      key += keyword!;
    }
    if (orderBy != '') {
      key += orderBy!;
    }
    if (orderType != '') {
      key += orderType!;
    }

    return key;
  }
}
