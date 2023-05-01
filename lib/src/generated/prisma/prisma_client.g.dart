// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prisma_client.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskWhereInput _$TaskWhereInputFromJson(Map<String, dynamic> json) =>
    TaskWhereInput(
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => TaskWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => TaskWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)
          ?.map((e) => TaskWhereInput.fromJson(e as Map<String, dynamic>)),
      id: json['id'] == null
          ? null
          : IntFilter.fromJson(json['id'] as Map<String, dynamic>),
      uuid: json['uuid'] == null
          ? null
          : StringFilter.fromJson(json['uuid'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : StringFilter.fromJson(json['title'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : BoolFilter.fromJson(json['status'] as Map<String, dynamic>),
      categoryId: json['categoryId'] == null
          ? null
          : IntFilter.fromJson(json['categoryId'] as Map<String, dynamic>),
      updateAt: json['updateAt'] == null
          ? null
          : BigIntFilter.fromJson(json['updateAt'] as Map<String, dynamic>),
      syncAt: json['syncAt'] == null
          ? null
          : BigIntFilter.fromJson(json['syncAt'] as Map<String, dynamic>),
      deleteAt: json['deleteAt'] == null
          ? null
          : BigIntFilter.fromJson(json['deleteAt'] as Map<String, dynamic>),
      tags: json['tags'] == null
          ? null
          : TagListRelationFilter.fromJson(
              json['tags'] as Map<String, dynamic>),
      category: json['category'] == null
          ? null
          : CategoryRelationFilter.fromJson(
              json['category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TaskWhereInputToJson(TaskWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('uuid', instance.uuid?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('status', instance.status?.toJson());
  writeNotNull('categoryId', instance.categoryId?.toJson());
  writeNotNull('updateAt', instance.updateAt?.toJson());
  writeNotNull('syncAt', instance.syncAt?.toJson());
  writeNotNull('deleteAt', instance.deleteAt?.toJson());
  writeNotNull('tags', instance.tags?.toJson());
  writeNotNull('category', instance.category?.toJson());
  return val;
}

TaskOrderByWithRelationInput _$TaskOrderByWithRelationInputFromJson(
        Map<String, dynamic> json) =>
    TaskOrderByWithRelationInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      uuid: $enumDecodeNullable(_$SortOrderEnumMap, json['uuid']),
      title: $enumDecodeNullable(_$SortOrderEnumMap, json['title']),
      status: $enumDecodeNullable(_$SortOrderEnumMap, json['status']),
      categoryId: $enumDecodeNullable(_$SortOrderEnumMap, json['categoryId']),
      updateAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updateAt']),
      syncAt: $enumDecodeNullable(_$SortOrderEnumMap, json['syncAt']),
      deleteAt: $enumDecodeNullable(_$SortOrderEnumMap, json['deleteAt']),
      tags: json['tags'] == null
          ? null
          : TagOrderByRelationAggregateInput.fromJson(
              json['tags'] as Map<String, dynamic>),
      category: json['category'] == null
          ? null
          : CategoryOrderByWithRelationInput.fromJson(
              json['category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TaskOrderByWithRelationInputToJson(
    TaskOrderByWithRelationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('uuid', _$SortOrderEnumMap[instance.uuid]);
  writeNotNull('title', _$SortOrderEnumMap[instance.title]);
  writeNotNull('status', _$SortOrderEnumMap[instance.status]);
  writeNotNull('categoryId', _$SortOrderEnumMap[instance.categoryId]);
  writeNotNull('updateAt', _$SortOrderEnumMap[instance.updateAt]);
  writeNotNull('syncAt', _$SortOrderEnumMap[instance.syncAt]);
  writeNotNull('deleteAt', _$SortOrderEnumMap[instance.deleteAt]);
  writeNotNull('tags', instance.tags?.toJson());
  writeNotNull('category', instance.category?.toJson());
  return val;
}

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};

TaskWhereUniqueInput _$TaskWhereUniqueInputFromJson(
        Map<String, dynamic> json) =>
    TaskWhereUniqueInput(
      id: json['id'] as int?,
      uuid: json['uuid'] as String?,
    );

Map<String, dynamic> _$TaskWhereUniqueInputToJson(
    TaskWhereUniqueInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('uuid', instance.uuid);
  return val;
}

TaskOrderByWithAggregationInput _$TaskOrderByWithAggregationInputFromJson(
        Map<String, dynamic> json) =>
    TaskOrderByWithAggregationInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      uuid: $enumDecodeNullable(_$SortOrderEnumMap, json['uuid']),
      title: $enumDecodeNullable(_$SortOrderEnumMap, json['title']),
      status: $enumDecodeNullable(_$SortOrderEnumMap, json['status']),
      categoryId: $enumDecodeNullable(_$SortOrderEnumMap, json['categoryId']),
      updateAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updateAt']),
      syncAt: $enumDecodeNullable(_$SortOrderEnumMap, json['syncAt']),
      deleteAt: $enumDecodeNullable(_$SortOrderEnumMap, json['deleteAt']),
      $count: json['_count'] == null
          ? null
          : TaskCountOrderByAggregateInput.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : TaskAvgOrderByAggregateInput.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : TaskMaxOrderByAggregateInput.fromJson(
              json['_max'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : TaskMinOrderByAggregateInput.fromJson(
              json['_min'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : TaskSumOrderByAggregateInput.fromJson(
              json['_sum'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TaskOrderByWithAggregationInputToJson(
    TaskOrderByWithAggregationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('uuid', _$SortOrderEnumMap[instance.uuid]);
  writeNotNull('title', _$SortOrderEnumMap[instance.title]);
  writeNotNull('status', _$SortOrderEnumMap[instance.status]);
  writeNotNull('categoryId', _$SortOrderEnumMap[instance.categoryId]);
  writeNotNull('updateAt', _$SortOrderEnumMap[instance.updateAt]);
  writeNotNull('syncAt', _$SortOrderEnumMap[instance.syncAt]);
  writeNotNull('deleteAt', _$SortOrderEnumMap[instance.deleteAt]);
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  return val;
}

TaskScalarWhereWithAggregatesInput _$TaskScalarWhereWithAggregatesInputFromJson(
        Map<String, dynamic> json) =>
    TaskScalarWhereWithAggregatesInput(
      AND: (json['AND'] as List<dynamic>?)?.map((e) =>
          TaskScalarWhereWithAggregatesInput.fromJson(
              e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)?.map((e) =>
          TaskScalarWhereWithAggregatesInput.fromJson(
              e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
          TaskScalarWhereWithAggregatesInput.fromJson(
              e as Map<String, dynamic>)),
      id: json['id'] == null
          ? null
          : IntWithAggregatesFilter.fromJson(
              json['id'] as Map<String, dynamic>),
      uuid: json['uuid'] == null
          ? null
          : StringWithAggregatesFilter.fromJson(
              json['uuid'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : StringWithAggregatesFilter.fromJson(
              json['title'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : BoolWithAggregatesFilter.fromJson(
              json['status'] as Map<String, dynamic>),
      categoryId: json['categoryId'] == null
          ? null
          : IntWithAggregatesFilter.fromJson(
              json['categoryId'] as Map<String, dynamic>),
      updateAt: json['updateAt'] == null
          ? null
          : BigIntWithAggregatesFilter.fromJson(
              json['updateAt'] as Map<String, dynamic>),
      syncAt: json['syncAt'] == null
          ? null
          : BigIntWithAggregatesFilter.fromJson(
              json['syncAt'] as Map<String, dynamic>),
      deleteAt: json['deleteAt'] == null
          ? null
          : BigIntWithAggregatesFilter.fromJson(
              json['deleteAt'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TaskScalarWhereWithAggregatesInputToJson(
    TaskScalarWhereWithAggregatesInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('uuid', instance.uuid?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('status', instance.status?.toJson());
  writeNotNull('categoryId', instance.categoryId?.toJson());
  writeNotNull('updateAt', instance.updateAt?.toJson());
  writeNotNull('syncAt', instance.syncAt?.toJson());
  writeNotNull('deleteAt', instance.deleteAt?.toJson());
  return val;
}

TagWhereInput _$TagWhereInputFromJson(Map<String, dynamic> json) =>
    TagWhereInput(
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => TagWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => TagWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)
          ?.map((e) => TagWhereInput.fromJson(e as Map<String, dynamic>)),
      id: json['id'] == null
          ? null
          : IntFilter.fromJson(json['id'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringFilter.fromJson(json['name'] as Map<String, dynamic>),
      color: json['color'] == null
          ? null
          : IntFilter.fromJson(json['color'] as Map<String, dynamic>),
      updateAt: json['updateAt'] == null
          ? null
          : BigIntFilter.fromJson(json['updateAt'] as Map<String, dynamic>),
      syncAt: json['syncAt'] == null
          ? null
          : BigIntFilter.fromJson(json['syncAt'] as Map<String, dynamic>),
      deleteAt: json['deleteAt'] == null
          ? null
          : BigIntFilter.fromJson(json['deleteAt'] as Map<String, dynamic>),
      tasks: json['tasks'] == null
          ? null
          : TaskListRelationFilter.fromJson(
              json['tasks'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TagWhereInputToJson(TagWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('color', instance.color?.toJson());
  writeNotNull('updateAt', instance.updateAt?.toJson());
  writeNotNull('syncAt', instance.syncAt?.toJson());
  writeNotNull('deleteAt', instance.deleteAt?.toJson());
  writeNotNull('tasks', instance.tasks?.toJson());
  return val;
}

TagOrderByWithRelationInput _$TagOrderByWithRelationInputFromJson(
        Map<String, dynamic> json) =>
    TagOrderByWithRelationInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      name: $enumDecodeNullable(_$SortOrderEnumMap, json['name']),
      color: $enumDecodeNullable(_$SortOrderEnumMap, json['color']),
      updateAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updateAt']),
      syncAt: $enumDecodeNullable(_$SortOrderEnumMap, json['syncAt']),
      deleteAt: $enumDecodeNullable(_$SortOrderEnumMap, json['deleteAt']),
      tasks: json['tasks'] == null
          ? null
          : TaskOrderByRelationAggregateInput.fromJson(
              json['tasks'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TagOrderByWithRelationInputToJson(
    TagOrderByWithRelationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('name', _$SortOrderEnumMap[instance.name]);
  writeNotNull('color', _$SortOrderEnumMap[instance.color]);
  writeNotNull('updateAt', _$SortOrderEnumMap[instance.updateAt]);
  writeNotNull('syncAt', _$SortOrderEnumMap[instance.syncAt]);
  writeNotNull('deleteAt', _$SortOrderEnumMap[instance.deleteAt]);
  writeNotNull('tasks', instance.tasks?.toJson());
  return val;
}

TagWhereUniqueInput _$TagWhereUniqueInputFromJson(Map<String, dynamic> json) =>
    TagWhereUniqueInput(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$TagWhereUniqueInputToJson(TagWhereUniqueInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  return val;
}

TagOrderByWithAggregationInput _$TagOrderByWithAggregationInputFromJson(
        Map<String, dynamic> json) =>
    TagOrderByWithAggregationInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      name: $enumDecodeNullable(_$SortOrderEnumMap, json['name']),
      color: $enumDecodeNullable(_$SortOrderEnumMap, json['color']),
      updateAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updateAt']),
      syncAt: $enumDecodeNullable(_$SortOrderEnumMap, json['syncAt']),
      deleteAt: $enumDecodeNullable(_$SortOrderEnumMap, json['deleteAt']),
      $count: json['_count'] == null
          ? null
          : TagCountOrderByAggregateInput.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : TagAvgOrderByAggregateInput.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : TagMaxOrderByAggregateInput.fromJson(
              json['_max'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : TagMinOrderByAggregateInput.fromJson(
              json['_min'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : TagSumOrderByAggregateInput.fromJson(
              json['_sum'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TagOrderByWithAggregationInputToJson(
    TagOrderByWithAggregationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('name', _$SortOrderEnumMap[instance.name]);
  writeNotNull('color', _$SortOrderEnumMap[instance.color]);
  writeNotNull('updateAt', _$SortOrderEnumMap[instance.updateAt]);
  writeNotNull('syncAt', _$SortOrderEnumMap[instance.syncAt]);
  writeNotNull('deleteAt', _$SortOrderEnumMap[instance.deleteAt]);
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  return val;
}

TagScalarWhereWithAggregatesInput _$TagScalarWhereWithAggregatesInputFromJson(
        Map<String, dynamic> json) =>
    TagScalarWhereWithAggregatesInput(
      AND: (json['AND'] as List<dynamic>?)?.map((e) =>
          TagScalarWhereWithAggregatesInput.fromJson(
              e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)?.map((e) =>
          TagScalarWhereWithAggregatesInput.fromJson(
              e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
          TagScalarWhereWithAggregatesInput.fromJson(
              e as Map<String, dynamic>)),
      id: json['id'] == null
          ? null
          : IntWithAggregatesFilter.fromJson(
              json['id'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringWithAggregatesFilter.fromJson(
              json['name'] as Map<String, dynamic>),
      color: json['color'] == null
          ? null
          : IntWithAggregatesFilter.fromJson(
              json['color'] as Map<String, dynamic>),
      updateAt: json['updateAt'] == null
          ? null
          : BigIntWithAggregatesFilter.fromJson(
              json['updateAt'] as Map<String, dynamic>),
      syncAt: json['syncAt'] == null
          ? null
          : BigIntWithAggregatesFilter.fromJson(
              json['syncAt'] as Map<String, dynamic>),
      deleteAt: json['deleteAt'] == null
          ? null
          : BigIntWithAggregatesFilter.fromJson(
              json['deleteAt'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TagScalarWhereWithAggregatesInputToJson(
    TagScalarWhereWithAggregatesInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('color', instance.color?.toJson());
  writeNotNull('updateAt', instance.updateAt?.toJson());
  writeNotNull('syncAt', instance.syncAt?.toJson());
  writeNotNull('deleteAt', instance.deleteAt?.toJson());
  return val;
}

CategoryWhereInput _$CategoryWhereInputFromJson(Map<String, dynamic> json) =>
    CategoryWhereInput(
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => CategoryWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => CategoryWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)
          ?.map((e) => CategoryWhereInput.fromJson(e as Map<String, dynamic>)),
      id: json['id'] == null
          ? null
          : IntFilter.fromJson(json['id'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringFilter.fromJson(json['name'] as Map<String, dynamic>),
      color: json['color'] == null
          ? null
          : IntFilter.fromJson(json['color'] as Map<String, dynamic>),
      updateAt: json['updateAt'] == null
          ? null
          : BigIntFilter.fromJson(json['updateAt'] as Map<String, dynamic>),
      syncAt: json['syncAt'] == null
          ? null
          : BigIntFilter.fromJson(json['syncAt'] as Map<String, dynamic>),
      deleteAt: json['deleteAt'] == null
          ? null
          : BigIntFilter.fromJson(json['deleteAt'] as Map<String, dynamic>),
      tasks: json['tasks'] == null
          ? null
          : TaskListRelationFilter.fromJson(
              json['tasks'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CategoryWhereInputToJson(CategoryWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('color', instance.color?.toJson());
  writeNotNull('updateAt', instance.updateAt?.toJson());
  writeNotNull('syncAt', instance.syncAt?.toJson());
  writeNotNull('deleteAt', instance.deleteAt?.toJson());
  writeNotNull('tasks', instance.tasks?.toJson());
  return val;
}

CategoryOrderByWithRelationInput _$CategoryOrderByWithRelationInputFromJson(
        Map<String, dynamic> json) =>
    CategoryOrderByWithRelationInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      name: $enumDecodeNullable(_$SortOrderEnumMap, json['name']),
      color: $enumDecodeNullable(_$SortOrderEnumMap, json['color']),
      updateAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updateAt']),
      syncAt: $enumDecodeNullable(_$SortOrderEnumMap, json['syncAt']),
      deleteAt: $enumDecodeNullable(_$SortOrderEnumMap, json['deleteAt']),
      tasks: json['tasks'] == null
          ? null
          : TaskOrderByRelationAggregateInput.fromJson(
              json['tasks'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CategoryOrderByWithRelationInputToJson(
    CategoryOrderByWithRelationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('name', _$SortOrderEnumMap[instance.name]);
  writeNotNull('color', _$SortOrderEnumMap[instance.color]);
  writeNotNull('updateAt', _$SortOrderEnumMap[instance.updateAt]);
  writeNotNull('syncAt', _$SortOrderEnumMap[instance.syncAt]);
  writeNotNull('deleteAt', _$SortOrderEnumMap[instance.deleteAt]);
  writeNotNull('tasks', instance.tasks?.toJson());
  return val;
}

CategoryWhereUniqueInput _$CategoryWhereUniqueInputFromJson(
        Map<String, dynamic> json) =>
    CategoryWhereUniqueInput(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$CategoryWhereUniqueInputToJson(
    CategoryWhereUniqueInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  return val;
}

CategoryOrderByWithAggregationInput
    _$CategoryOrderByWithAggregationInputFromJson(Map<String, dynamic> json) =>
        CategoryOrderByWithAggregationInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          name: $enumDecodeNullable(_$SortOrderEnumMap, json['name']),
          color: $enumDecodeNullable(_$SortOrderEnumMap, json['color']),
          updateAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updateAt']),
          syncAt: $enumDecodeNullable(_$SortOrderEnumMap, json['syncAt']),
          deleteAt: $enumDecodeNullable(_$SortOrderEnumMap, json['deleteAt']),
          $count: json['_count'] == null
              ? null
              : CategoryCountOrderByAggregateInput.fromJson(
                  json['_count'] as Map<String, dynamic>),
          $avg: json['_avg'] == null
              ? null
              : CategoryAvgOrderByAggregateInput.fromJson(
                  json['_avg'] as Map<String, dynamic>),
          $max: json['_max'] == null
              ? null
              : CategoryMaxOrderByAggregateInput.fromJson(
                  json['_max'] as Map<String, dynamic>),
          $min: json['_min'] == null
              ? null
              : CategoryMinOrderByAggregateInput.fromJson(
                  json['_min'] as Map<String, dynamic>),
          $sum: json['_sum'] == null
              ? null
              : CategorySumOrderByAggregateInput.fromJson(
                  json['_sum'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CategoryOrderByWithAggregationInputToJson(
    CategoryOrderByWithAggregationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('name', _$SortOrderEnumMap[instance.name]);
  writeNotNull('color', _$SortOrderEnumMap[instance.color]);
  writeNotNull('updateAt', _$SortOrderEnumMap[instance.updateAt]);
  writeNotNull('syncAt', _$SortOrderEnumMap[instance.syncAt]);
  writeNotNull('deleteAt', _$SortOrderEnumMap[instance.deleteAt]);
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  return val;
}

CategoryScalarWhereWithAggregatesInput
    _$CategoryScalarWhereWithAggregatesInputFromJson(
            Map<String, dynamic> json) =>
        CategoryScalarWhereWithAggregatesInput(
          AND: (json['AND'] as List<dynamic>?)?.map((e) =>
              CategoryScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          OR: (json['OR'] as List<dynamic>?)?.map((e) =>
              CategoryScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
              CategoryScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          id: json['id'] == null
              ? null
              : IntWithAggregatesFilter.fromJson(
                  json['id'] as Map<String, dynamic>),
          name: json['name'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['name'] as Map<String, dynamic>),
          color: json['color'] == null
              ? null
              : IntWithAggregatesFilter.fromJson(
                  json['color'] as Map<String, dynamic>),
          updateAt: json['updateAt'] == null
              ? null
              : BigIntWithAggregatesFilter.fromJson(
                  json['updateAt'] as Map<String, dynamic>),
          syncAt: json['syncAt'] == null
              ? null
              : BigIntWithAggregatesFilter.fromJson(
                  json['syncAt'] as Map<String, dynamic>),
          deleteAt: json['deleteAt'] == null
              ? null
              : BigIntWithAggregatesFilter.fromJson(
                  json['deleteAt'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CategoryScalarWhereWithAggregatesInputToJson(
    CategoryScalarWhereWithAggregatesInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('color', instance.color?.toJson());
  writeNotNull('updateAt', instance.updateAt?.toJson());
  writeNotNull('syncAt', instance.syncAt?.toJson());
  writeNotNull('deleteAt', instance.deleteAt?.toJson());
  return val;
}

TaskCreateInput _$TaskCreateInputFromJson(Map<String, dynamic> json) =>
    TaskCreateInput(
      uuid: json['uuid'] as String,
      title: json['title'] as String,
      status: json['status'] as bool,
      updateAt: BigInt.parse(json['updateAt'] as String),
      syncAt: BigInt.parse(json['syncAt'] as String),
      deleteAt: BigInt.parse(json['deleteAt'] as String),
      tags: json['tags'] == null
          ? null
          : TagCreateNestedManyWithoutTasksInput.fromJson(
              json['tags'] as Map<String, dynamic>),
      category: CategoryCreateNestedOneWithoutTasksInput.fromJson(
          json['category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TaskCreateInputToJson(TaskCreateInput instance) {
  final val = <String, dynamic>{
    'uuid': instance.uuid,
    'title': instance.title,
    'status': instance.status,
    'updateAt': instance.updateAt.toString(),
    'syncAt': instance.syncAt.toString(),
    'deleteAt': instance.deleteAt.toString(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tags', instance.tags?.toJson());
  val['category'] = instance.category.toJson();
  return val;
}

TaskUncheckedCreateInput _$TaskUncheckedCreateInputFromJson(
        Map<String, dynamic> json) =>
    TaskUncheckedCreateInput(
      id: json['id'] as int?,
      uuid: json['uuid'] as String,
      title: json['title'] as String,
      status: json['status'] as bool,
      categoryId: json['categoryId'] as int,
      updateAt: BigInt.parse(json['updateAt'] as String),
      syncAt: BigInt.parse(json['syncAt'] as String),
      deleteAt: BigInt.parse(json['deleteAt'] as String),
      tags: json['tags'] == null
          ? null
          : TagUncheckedCreateNestedManyWithoutTasksInput.fromJson(
              json['tags'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TaskUncheckedCreateInputToJson(
    TaskUncheckedCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['uuid'] = instance.uuid;
  val['title'] = instance.title;
  val['status'] = instance.status;
  val['categoryId'] = instance.categoryId;
  val['updateAt'] = instance.updateAt.toString();
  val['syncAt'] = instance.syncAt.toString();
  val['deleteAt'] = instance.deleteAt.toString();
  writeNotNull('tags', instance.tags?.toJson());
  return val;
}

TaskUpdateInput _$TaskUpdateInputFromJson(Map<String, dynamic> json) =>
    TaskUpdateInput(
      uuid: json['uuid'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['uuid'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['title'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : BoolFieldUpdateOperationsInput.fromJson(
              json['status'] as Map<String, dynamic>),
      updateAt: json['updateAt'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['updateAt'] as Map<String, dynamic>),
      syncAt: json['syncAt'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['syncAt'] as Map<String, dynamic>),
      deleteAt: json['deleteAt'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['deleteAt'] as Map<String, dynamic>),
      tags: json['tags'] == null
          ? null
          : TagUpdateManyWithoutTasksNestedInput.fromJson(
              json['tags'] as Map<String, dynamic>),
      category: json['category'] == null
          ? null
          : CategoryUpdateOneRequiredWithoutTasksNestedInput.fromJson(
              json['category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TaskUpdateInputToJson(TaskUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('uuid', instance.uuid?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('status', instance.status?.toJson());
  writeNotNull('updateAt', instance.updateAt?.toJson());
  writeNotNull('syncAt', instance.syncAt?.toJson());
  writeNotNull('deleteAt', instance.deleteAt?.toJson());
  writeNotNull('tags', instance.tags?.toJson());
  writeNotNull('category', instance.category?.toJson());
  return val;
}

TaskUncheckedUpdateInput _$TaskUncheckedUpdateInputFromJson(
        Map<String, dynamic> json) =>
    TaskUncheckedUpdateInput(
      id: json['id'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      uuid: json['uuid'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['uuid'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['title'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : BoolFieldUpdateOperationsInput.fromJson(
              json['status'] as Map<String, dynamic>),
      categoryId: json['categoryId'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['categoryId'] as Map<String, dynamic>),
      updateAt: json['updateAt'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['updateAt'] as Map<String, dynamic>),
      syncAt: json['syncAt'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['syncAt'] as Map<String, dynamic>),
      deleteAt: json['deleteAt'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['deleteAt'] as Map<String, dynamic>),
      tags: json['tags'] == null
          ? null
          : TagUncheckedUpdateManyWithoutTasksNestedInput.fromJson(
              json['tags'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TaskUncheckedUpdateInputToJson(
    TaskUncheckedUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('uuid', instance.uuid?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('status', instance.status?.toJson());
  writeNotNull('categoryId', instance.categoryId?.toJson());
  writeNotNull('updateAt', instance.updateAt?.toJson());
  writeNotNull('syncAt', instance.syncAt?.toJson());
  writeNotNull('deleteAt', instance.deleteAt?.toJson());
  writeNotNull('tags', instance.tags?.toJson());
  return val;
}

TaskCreateManyInput _$TaskCreateManyInputFromJson(Map<String, dynamic> json) =>
    TaskCreateManyInput(
      id: json['id'] as int?,
      uuid: json['uuid'] as String,
      title: json['title'] as String,
      status: json['status'] as bool,
      categoryId: json['categoryId'] as int,
      updateAt: BigInt.parse(json['updateAt'] as String),
      syncAt: BigInt.parse(json['syncAt'] as String),
      deleteAt: BigInt.parse(json['deleteAt'] as String),
    );

Map<String, dynamic> _$TaskCreateManyInputToJson(TaskCreateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['uuid'] = instance.uuid;
  val['title'] = instance.title;
  val['status'] = instance.status;
  val['categoryId'] = instance.categoryId;
  val['updateAt'] = instance.updateAt.toString();
  val['syncAt'] = instance.syncAt.toString();
  val['deleteAt'] = instance.deleteAt.toString();
  return val;
}

TaskUpdateManyMutationInput _$TaskUpdateManyMutationInputFromJson(
        Map<String, dynamic> json) =>
    TaskUpdateManyMutationInput(
      uuid: json['uuid'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['uuid'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['title'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : BoolFieldUpdateOperationsInput.fromJson(
              json['status'] as Map<String, dynamic>),
      updateAt: json['updateAt'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['updateAt'] as Map<String, dynamic>),
      syncAt: json['syncAt'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['syncAt'] as Map<String, dynamic>),
      deleteAt: json['deleteAt'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['deleteAt'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TaskUpdateManyMutationInputToJson(
    TaskUpdateManyMutationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('uuid', instance.uuid?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('status', instance.status?.toJson());
  writeNotNull('updateAt', instance.updateAt?.toJson());
  writeNotNull('syncAt', instance.syncAt?.toJson());
  writeNotNull('deleteAt', instance.deleteAt?.toJson());
  return val;
}

TaskUncheckedUpdateManyInput _$TaskUncheckedUpdateManyInputFromJson(
        Map<String, dynamic> json) =>
    TaskUncheckedUpdateManyInput(
      id: json['id'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      uuid: json['uuid'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['uuid'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['title'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : BoolFieldUpdateOperationsInput.fromJson(
              json['status'] as Map<String, dynamic>),
      categoryId: json['categoryId'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['categoryId'] as Map<String, dynamic>),
      updateAt: json['updateAt'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['updateAt'] as Map<String, dynamic>),
      syncAt: json['syncAt'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['syncAt'] as Map<String, dynamic>),
      deleteAt: json['deleteAt'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['deleteAt'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TaskUncheckedUpdateManyInputToJson(
    TaskUncheckedUpdateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('uuid', instance.uuid?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('status', instance.status?.toJson());
  writeNotNull('categoryId', instance.categoryId?.toJson());
  writeNotNull('updateAt', instance.updateAt?.toJson());
  writeNotNull('syncAt', instance.syncAt?.toJson());
  writeNotNull('deleteAt', instance.deleteAt?.toJson());
  return val;
}

TagCreateInput _$TagCreateInputFromJson(Map<String, dynamic> json) =>
    TagCreateInput(
      name: json['name'] as String,
      color: json['color'] as int,
      updateAt: BigInt.parse(json['updateAt'] as String),
      syncAt: BigInt.parse(json['syncAt'] as String),
      deleteAt: BigInt.parse(json['deleteAt'] as String),
      tasks: json['tasks'] == null
          ? null
          : TaskCreateNestedManyWithoutTagsInput.fromJson(
              json['tasks'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TagCreateInputToJson(TagCreateInput instance) {
  final val = <String, dynamic>{
    'name': instance.name,
    'color': instance.color,
    'updateAt': instance.updateAt.toString(),
    'syncAt': instance.syncAt.toString(),
    'deleteAt': instance.deleteAt.toString(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tasks', instance.tasks?.toJson());
  return val;
}

TagUncheckedCreateInput _$TagUncheckedCreateInputFromJson(
        Map<String, dynamic> json) =>
    TagUncheckedCreateInput(
      id: json['id'] as int?,
      name: json['name'] as String,
      color: json['color'] as int,
      updateAt: BigInt.parse(json['updateAt'] as String),
      syncAt: BigInt.parse(json['syncAt'] as String),
      deleteAt: BigInt.parse(json['deleteAt'] as String),
      tasks: json['tasks'] == null
          ? null
          : TaskUncheckedCreateNestedManyWithoutTagsInput.fromJson(
              json['tasks'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TagUncheckedCreateInputToJson(
    TagUncheckedCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['name'] = instance.name;
  val['color'] = instance.color;
  val['updateAt'] = instance.updateAt.toString();
  val['syncAt'] = instance.syncAt.toString();
  val['deleteAt'] = instance.deleteAt.toString();
  writeNotNull('tasks', instance.tasks?.toJson());
  return val;
}

TagUpdateInput _$TagUpdateInputFromJson(Map<String, dynamic> json) =>
    TagUpdateInput(
      name: json['name'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['name'] as Map<String, dynamic>),
      color: json['color'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['color'] as Map<String, dynamic>),
      updateAt: json['updateAt'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['updateAt'] as Map<String, dynamic>),
      syncAt: json['syncAt'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['syncAt'] as Map<String, dynamic>),
      deleteAt: json['deleteAt'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['deleteAt'] as Map<String, dynamic>),
      tasks: json['tasks'] == null
          ? null
          : TaskUpdateManyWithoutTagsNestedInput.fromJson(
              json['tasks'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TagUpdateInputToJson(TagUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name?.toJson());
  writeNotNull('color', instance.color?.toJson());
  writeNotNull('updateAt', instance.updateAt?.toJson());
  writeNotNull('syncAt', instance.syncAt?.toJson());
  writeNotNull('deleteAt', instance.deleteAt?.toJson());
  writeNotNull('tasks', instance.tasks?.toJson());
  return val;
}

TagUncheckedUpdateInput _$TagUncheckedUpdateInputFromJson(
        Map<String, dynamic> json) =>
    TagUncheckedUpdateInput(
      id: json['id'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['name'] as Map<String, dynamic>),
      color: json['color'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['color'] as Map<String, dynamic>),
      updateAt: json['updateAt'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['updateAt'] as Map<String, dynamic>),
      syncAt: json['syncAt'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['syncAt'] as Map<String, dynamic>),
      deleteAt: json['deleteAt'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['deleteAt'] as Map<String, dynamic>),
      tasks: json['tasks'] == null
          ? null
          : TaskUncheckedUpdateManyWithoutTagsNestedInput.fromJson(
              json['tasks'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TagUncheckedUpdateInputToJson(
    TagUncheckedUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('color', instance.color?.toJson());
  writeNotNull('updateAt', instance.updateAt?.toJson());
  writeNotNull('syncAt', instance.syncAt?.toJson());
  writeNotNull('deleteAt', instance.deleteAt?.toJson());
  writeNotNull('tasks', instance.tasks?.toJson());
  return val;
}

TagCreateManyInput _$TagCreateManyInputFromJson(Map<String, dynamic> json) =>
    TagCreateManyInput(
      id: json['id'] as int?,
      name: json['name'] as String,
      color: json['color'] as int,
      updateAt: BigInt.parse(json['updateAt'] as String),
      syncAt: BigInt.parse(json['syncAt'] as String),
      deleteAt: BigInt.parse(json['deleteAt'] as String),
    );

Map<String, dynamic> _$TagCreateManyInputToJson(TagCreateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['name'] = instance.name;
  val['color'] = instance.color;
  val['updateAt'] = instance.updateAt.toString();
  val['syncAt'] = instance.syncAt.toString();
  val['deleteAt'] = instance.deleteAt.toString();
  return val;
}

TagUpdateManyMutationInput _$TagUpdateManyMutationInputFromJson(
        Map<String, dynamic> json) =>
    TagUpdateManyMutationInput(
      name: json['name'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['name'] as Map<String, dynamic>),
      color: json['color'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['color'] as Map<String, dynamic>),
      updateAt: json['updateAt'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['updateAt'] as Map<String, dynamic>),
      syncAt: json['syncAt'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['syncAt'] as Map<String, dynamic>),
      deleteAt: json['deleteAt'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['deleteAt'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TagUpdateManyMutationInputToJson(
    TagUpdateManyMutationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name?.toJson());
  writeNotNull('color', instance.color?.toJson());
  writeNotNull('updateAt', instance.updateAt?.toJson());
  writeNotNull('syncAt', instance.syncAt?.toJson());
  writeNotNull('deleteAt', instance.deleteAt?.toJson());
  return val;
}

TagUncheckedUpdateManyInput _$TagUncheckedUpdateManyInputFromJson(
        Map<String, dynamic> json) =>
    TagUncheckedUpdateManyInput(
      id: json['id'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['name'] as Map<String, dynamic>),
      color: json['color'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['color'] as Map<String, dynamic>),
      updateAt: json['updateAt'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['updateAt'] as Map<String, dynamic>),
      syncAt: json['syncAt'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['syncAt'] as Map<String, dynamic>),
      deleteAt: json['deleteAt'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['deleteAt'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TagUncheckedUpdateManyInputToJson(
    TagUncheckedUpdateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('color', instance.color?.toJson());
  writeNotNull('updateAt', instance.updateAt?.toJson());
  writeNotNull('syncAt', instance.syncAt?.toJson());
  writeNotNull('deleteAt', instance.deleteAt?.toJson());
  return val;
}

CategoryCreateInput _$CategoryCreateInputFromJson(Map<String, dynamic> json) =>
    CategoryCreateInput(
      name: json['name'] as String,
      color: json['color'] as int,
      updateAt: BigInt.parse(json['updateAt'] as String),
      syncAt: BigInt.parse(json['syncAt'] as String),
      deleteAt: BigInt.parse(json['deleteAt'] as String),
      tasks: json['tasks'] == null
          ? null
          : TaskCreateNestedManyWithoutCategoryInput.fromJson(
              json['tasks'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CategoryCreateInputToJson(CategoryCreateInput instance) {
  final val = <String, dynamic>{
    'name': instance.name,
    'color': instance.color,
    'updateAt': instance.updateAt.toString(),
    'syncAt': instance.syncAt.toString(),
    'deleteAt': instance.deleteAt.toString(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tasks', instance.tasks?.toJson());
  return val;
}

CategoryUncheckedCreateInput _$CategoryUncheckedCreateInputFromJson(
        Map<String, dynamic> json) =>
    CategoryUncheckedCreateInput(
      id: json['id'] as int?,
      name: json['name'] as String,
      color: json['color'] as int,
      updateAt: BigInt.parse(json['updateAt'] as String),
      syncAt: BigInt.parse(json['syncAt'] as String),
      deleteAt: BigInt.parse(json['deleteAt'] as String),
      tasks: json['tasks'] == null
          ? null
          : TaskUncheckedCreateNestedManyWithoutCategoryInput.fromJson(
              json['tasks'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CategoryUncheckedCreateInputToJson(
    CategoryUncheckedCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['name'] = instance.name;
  val['color'] = instance.color;
  val['updateAt'] = instance.updateAt.toString();
  val['syncAt'] = instance.syncAt.toString();
  val['deleteAt'] = instance.deleteAt.toString();
  writeNotNull('tasks', instance.tasks?.toJson());
  return val;
}

CategoryUpdateInput _$CategoryUpdateInputFromJson(Map<String, dynamic> json) =>
    CategoryUpdateInput(
      name: json['name'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['name'] as Map<String, dynamic>),
      color: json['color'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['color'] as Map<String, dynamic>),
      updateAt: json['updateAt'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['updateAt'] as Map<String, dynamic>),
      syncAt: json['syncAt'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['syncAt'] as Map<String, dynamic>),
      deleteAt: json['deleteAt'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['deleteAt'] as Map<String, dynamic>),
      tasks: json['tasks'] == null
          ? null
          : TaskUpdateManyWithoutCategoryNestedInput.fromJson(
              json['tasks'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CategoryUpdateInputToJson(CategoryUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name?.toJson());
  writeNotNull('color', instance.color?.toJson());
  writeNotNull('updateAt', instance.updateAt?.toJson());
  writeNotNull('syncAt', instance.syncAt?.toJson());
  writeNotNull('deleteAt', instance.deleteAt?.toJson());
  writeNotNull('tasks', instance.tasks?.toJson());
  return val;
}

CategoryUncheckedUpdateInput _$CategoryUncheckedUpdateInputFromJson(
        Map<String, dynamic> json) =>
    CategoryUncheckedUpdateInput(
      id: json['id'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['name'] as Map<String, dynamic>),
      color: json['color'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['color'] as Map<String, dynamic>),
      updateAt: json['updateAt'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['updateAt'] as Map<String, dynamic>),
      syncAt: json['syncAt'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['syncAt'] as Map<String, dynamic>),
      deleteAt: json['deleteAt'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['deleteAt'] as Map<String, dynamic>),
      tasks: json['tasks'] == null
          ? null
          : TaskUncheckedUpdateManyWithoutCategoryNestedInput.fromJson(
              json['tasks'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CategoryUncheckedUpdateInputToJson(
    CategoryUncheckedUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('color', instance.color?.toJson());
  writeNotNull('updateAt', instance.updateAt?.toJson());
  writeNotNull('syncAt', instance.syncAt?.toJson());
  writeNotNull('deleteAt', instance.deleteAt?.toJson());
  writeNotNull('tasks', instance.tasks?.toJson());
  return val;
}

CategoryCreateManyInput _$CategoryCreateManyInputFromJson(
        Map<String, dynamic> json) =>
    CategoryCreateManyInput(
      id: json['id'] as int?,
      name: json['name'] as String,
      color: json['color'] as int,
      updateAt: BigInt.parse(json['updateAt'] as String),
      syncAt: BigInt.parse(json['syncAt'] as String),
      deleteAt: BigInt.parse(json['deleteAt'] as String),
    );

Map<String, dynamic> _$CategoryCreateManyInputToJson(
    CategoryCreateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['name'] = instance.name;
  val['color'] = instance.color;
  val['updateAt'] = instance.updateAt.toString();
  val['syncAt'] = instance.syncAt.toString();
  val['deleteAt'] = instance.deleteAt.toString();
  return val;
}

CategoryUpdateManyMutationInput _$CategoryUpdateManyMutationInputFromJson(
        Map<String, dynamic> json) =>
    CategoryUpdateManyMutationInput(
      name: json['name'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['name'] as Map<String, dynamic>),
      color: json['color'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['color'] as Map<String, dynamic>),
      updateAt: json['updateAt'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['updateAt'] as Map<String, dynamic>),
      syncAt: json['syncAt'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['syncAt'] as Map<String, dynamic>),
      deleteAt: json['deleteAt'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['deleteAt'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CategoryUpdateManyMutationInputToJson(
    CategoryUpdateManyMutationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name?.toJson());
  writeNotNull('color', instance.color?.toJson());
  writeNotNull('updateAt', instance.updateAt?.toJson());
  writeNotNull('syncAt', instance.syncAt?.toJson());
  writeNotNull('deleteAt', instance.deleteAt?.toJson());
  return val;
}

CategoryUncheckedUpdateManyInput _$CategoryUncheckedUpdateManyInputFromJson(
        Map<String, dynamic> json) =>
    CategoryUncheckedUpdateManyInput(
      id: json['id'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['name'] as Map<String, dynamic>),
      color: json['color'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['color'] as Map<String, dynamic>),
      updateAt: json['updateAt'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['updateAt'] as Map<String, dynamic>),
      syncAt: json['syncAt'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['syncAt'] as Map<String, dynamic>),
      deleteAt: json['deleteAt'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['deleteAt'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CategoryUncheckedUpdateManyInputToJson(
    CategoryUncheckedUpdateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('color', instance.color?.toJson());
  writeNotNull('updateAt', instance.updateAt?.toJson());
  writeNotNull('syncAt', instance.syncAt?.toJson());
  writeNotNull('deleteAt', instance.deleteAt?.toJson());
  return val;
}

IntFilter _$IntFilterFromJson(Map<String, dynamic> json) => IntFilter(
      equals: json['equals'] as int?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as int),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IntFilterToJson(IntFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

StringFilter _$StringFilterFromJson(Map<String, dynamic> json) => StringFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      mode: $enumDecodeNullable(_$QueryModeEnumMap, json['mode']),
      not: json['not'] == null
          ? null
          : NestedStringFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StringFilterToJson(StringFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('mode', _$QueryModeEnumMap[instance.mode]);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

const _$QueryModeEnumMap = {
  QueryMode.$default: 'default',
  QueryMode.insensitive: 'insensitive',
};

BoolFilter _$BoolFilterFromJson(Map<String, dynamic> json) => BoolFilter(
      equals: json['equals'] as bool?,
      not: json['not'] == null
          ? null
          : NestedBoolFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BoolFilterToJson(BoolFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

BigIntFilter _$BigIntFilterFromJson(Map<String, dynamic> json) => BigIntFilter(
      equals: json['equals'] == null
          ? null
          : BigInt.parse(json['equals'] as String),
      $in:
          (json['in'] as List<dynamic>?)?.map((e) => BigInt.parse(e as String)),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => BigInt.parse(e as String)),
      lt: json['lt'] == null ? null : BigInt.parse(json['lt'] as String),
      lte: json['lte'] == null ? null : BigInt.parse(json['lte'] as String),
      gt: json['gt'] == null ? null : BigInt.parse(json['gt'] as String),
      gte: json['gte'] == null ? null : BigInt.parse(json['gte'] as String),
      not: json['not'] == null
          ? null
          : NestedBigIntFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BigIntFilterToJson(BigIntFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals?.toString());
  writeNotNull('in', instance.$in?.map((e) => e.toString()).toList());
  writeNotNull('notIn', instance.notIn?.map((e) => e.toString()).toList());
  writeNotNull('lt', instance.lt?.toString());
  writeNotNull('lte', instance.lte?.toString());
  writeNotNull('gt', instance.gt?.toString());
  writeNotNull('gte', instance.gte?.toString());
  writeNotNull('not', instance.not?.toJson());
  return val;
}

TagListRelationFilter _$TagListRelationFilterFromJson(
        Map<String, dynamic> json) =>
    TagListRelationFilter(
      every: json['every'] == null
          ? null
          : TagWhereInput.fromJson(json['every'] as Map<String, dynamic>),
      some: json['some'] == null
          ? null
          : TagWhereInput.fromJson(json['some'] as Map<String, dynamic>),
      none: json['none'] == null
          ? null
          : TagWhereInput.fromJson(json['none'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TagListRelationFilterToJson(
    TagListRelationFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('every', instance.every?.toJson());
  writeNotNull('some', instance.some?.toJson());
  writeNotNull('none', instance.none?.toJson());
  return val;
}

CategoryRelationFilter _$CategoryRelationFilterFromJson(
        Map<String, dynamic> json) =>
    CategoryRelationFilter(
      $is: json['is'] == null
          ? null
          : CategoryWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : CategoryWhereInput.fromJson(json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CategoryRelationFilterToJson(
    CategoryRelationFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('is', instance.$is?.toJson());
  writeNotNull('isNot', instance.isNot?.toJson());
  return val;
}

TagOrderByRelationAggregateInput _$TagOrderByRelationAggregateInputFromJson(
        Map<String, dynamic> json) =>
    TagOrderByRelationAggregateInput(
      $count: $enumDecodeNullable(_$SortOrderEnumMap, json['_count']),
    );

Map<String, dynamic> _$TagOrderByRelationAggregateInputToJson(
    TagOrderByRelationAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_count', _$SortOrderEnumMap[instance.$count]);
  return val;
}

TaskCountOrderByAggregateInput _$TaskCountOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    TaskCountOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      uuid: $enumDecodeNullable(_$SortOrderEnumMap, json['uuid']),
      title: $enumDecodeNullable(_$SortOrderEnumMap, json['title']),
      status: $enumDecodeNullable(_$SortOrderEnumMap, json['status']),
      categoryId: $enumDecodeNullable(_$SortOrderEnumMap, json['categoryId']),
      updateAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updateAt']),
      syncAt: $enumDecodeNullable(_$SortOrderEnumMap, json['syncAt']),
      deleteAt: $enumDecodeNullable(_$SortOrderEnumMap, json['deleteAt']),
    );

Map<String, dynamic> _$TaskCountOrderByAggregateInputToJson(
    TaskCountOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('uuid', _$SortOrderEnumMap[instance.uuid]);
  writeNotNull('title', _$SortOrderEnumMap[instance.title]);
  writeNotNull('status', _$SortOrderEnumMap[instance.status]);
  writeNotNull('categoryId', _$SortOrderEnumMap[instance.categoryId]);
  writeNotNull('updateAt', _$SortOrderEnumMap[instance.updateAt]);
  writeNotNull('syncAt', _$SortOrderEnumMap[instance.syncAt]);
  writeNotNull('deleteAt', _$SortOrderEnumMap[instance.deleteAt]);
  return val;
}

TaskAvgOrderByAggregateInput _$TaskAvgOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    TaskAvgOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      categoryId: $enumDecodeNullable(_$SortOrderEnumMap, json['categoryId']),
      updateAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updateAt']),
      syncAt: $enumDecodeNullable(_$SortOrderEnumMap, json['syncAt']),
      deleteAt: $enumDecodeNullable(_$SortOrderEnumMap, json['deleteAt']),
    );

Map<String, dynamic> _$TaskAvgOrderByAggregateInputToJson(
    TaskAvgOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('categoryId', _$SortOrderEnumMap[instance.categoryId]);
  writeNotNull('updateAt', _$SortOrderEnumMap[instance.updateAt]);
  writeNotNull('syncAt', _$SortOrderEnumMap[instance.syncAt]);
  writeNotNull('deleteAt', _$SortOrderEnumMap[instance.deleteAt]);
  return val;
}

TaskMaxOrderByAggregateInput _$TaskMaxOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    TaskMaxOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      uuid: $enumDecodeNullable(_$SortOrderEnumMap, json['uuid']),
      title: $enumDecodeNullable(_$SortOrderEnumMap, json['title']),
      status: $enumDecodeNullable(_$SortOrderEnumMap, json['status']),
      categoryId: $enumDecodeNullable(_$SortOrderEnumMap, json['categoryId']),
      updateAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updateAt']),
      syncAt: $enumDecodeNullable(_$SortOrderEnumMap, json['syncAt']),
      deleteAt: $enumDecodeNullable(_$SortOrderEnumMap, json['deleteAt']),
    );

Map<String, dynamic> _$TaskMaxOrderByAggregateInputToJson(
    TaskMaxOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('uuid', _$SortOrderEnumMap[instance.uuid]);
  writeNotNull('title', _$SortOrderEnumMap[instance.title]);
  writeNotNull('status', _$SortOrderEnumMap[instance.status]);
  writeNotNull('categoryId', _$SortOrderEnumMap[instance.categoryId]);
  writeNotNull('updateAt', _$SortOrderEnumMap[instance.updateAt]);
  writeNotNull('syncAt', _$SortOrderEnumMap[instance.syncAt]);
  writeNotNull('deleteAt', _$SortOrderEnumMap[instance.deleteAt]);
  return val;
}

TaskMinOrderByAggregateInput _$TaskMinOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    TaskMinOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      uuid: $enumDecodeNullable(_$SortOrderEnumMap, json['uuid']),
      title: $enumDecodeNullable(_$SortOrderEnumMap, json['title']),
      status: $enumDecodeNullable(_$SortOrderEnumMap, json['status']),
      categoryId: $enumDecodeNullable(_$SortOrderEnumMap, json['categoryId']),
      updateAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updateAt']),
      syncAt: $enumDecodeNullable(_$SortOrderEnumMap, json['syncAt']),
      deleteAt: $enumDecodeNullable(_$SortOrderEnumMap, json['deleteAt']),
    );

Map<String, dynamic> _$TaskMinOrderByAggregateInputToJson(
    TaskMinOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('uuid', _$SortOrderEnumMap[instance.uuid]);
  writeNotNull('title', _$SortOrderEnumMap[instance.title]);
  writeNotNull('status', _$SortOrderEnumMap[instance.status]);
  writeNotNull('categoryId', _$SortOrderEnumMap[instance.categoryId]);
  writeNotNull('updateAt', _$SortOrderEnumMap[instance.updateAt]);
  writeNotNull('syncAt', _$SortOrderEnumMap[instance.syncAt]);
  writeNotNull('deleteAt', _$SortOrderEnumMap[instance.deleteAt]);
  return val;
}

TaskSumOrderByAggregateInput _$TaskSumOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    TaskSumOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      categoryId: $enumDecodeNullable(_$SortOrderEnumMap, json['categoryId']),
      updateAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updateAt']),
      syncAt: $enumDecodeNullable(_$SortOrderEnumMap, json['syncAt']),
      deleteAt: $enumDecodeNullable(_$SortOrderEnumMap, json['deleteAt']),
    );

Map<String, dynamic> _$TaskSumOrderByAggregateInputToJson(
    TaskSumOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('categoryId', _$SortOrderEnumMap[instance.categoryId]);
  writeNotNull('updateAt', _$SortOrderEnumMap[instance.updateAt]);
  writeNotNull('syncAt', _$SortOrderEnumMap[instance.syncAt]);
  writeNotNull('deleteAt', _$SortOrderEnumMap[instance.deleteAt]);
  return val;
}

IntWithAggregatesFilter _$IntWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    IntWithAggregatesFilter(
      equals: json['equals'] as int?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as int),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : NestedFloatFilter.fromJson(json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : NestedIntFilter.fromJson(json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedIntFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedIntFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IntWithAggregatesFilterToJson(
    IntWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

StringWithAggregatesFilter _$StringWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    StringWithAggregatesFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      mode: $enumDecodeNullable(_$QueryModeEnumMap, json['mode']),
      not: json['not'] == null
          ? null
          : NestedStringWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedStringFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedStringFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StringWithAggregatesFilterToJson(
    StringWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('mode', _$QueryModeEnumMap[instance.mode]);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

BoolWithAggregatesFilter _$BoolWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    BoolWithAggregatesFilter(
      equals: json['equals'] as bool?,
      not: json['not'] == null
          ? null
          : NestedBoolWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedBoolFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedBoolFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BoolWithAggregatesFilterToJson(
    BoolWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

BigIntWithAggregatesFilter _$BigIntWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    BigIntWithAggregatesFilter(
      equals: json['equals'] == null
          ? null
          : BigInt.parse(json['equals'] as String),
      $in:
          (json['in'] as List<dynamic>?)?.map((e) => BigInt.parse(e as String)),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => BigInt.parse(e as String)),
      lt: json['lt'] == null ? null : BigInt.parse(json['lt'] as String),
      lte: json['lte'] == null ? null : BigInt.parse(json['lte'] as String),
      gt: json['gt'] == null ? null : BigInt.parse(json['gt'] as String),
      gte: json['gte'] == null ? null : BigInt.parse(json['gte'] as String),
      not: json['not'] == null
          ? null
          : NestedBigIntWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : NestedFloatFilter.fromJson(json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : NestedBigIntFilter.fromJson(json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedBigIntFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedBigIntFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BigIntWithAggregatesFilterToJson(
    BigIntWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals?.toString());
  writeNotNull('in', instance.$in?.map((e) => e.toString()).toList());
  writeNotNull('notIn', instance.notIn?.map((e) => e.toString()).toList());
  writeNotNull('lt', instance.lt?.toString());
  writeNotNull('lte', instance.lte?.toString());
  writeNotNull('gt', instance.gt?.toString());
  writeNotNull('gte', instance.gte?.toString());
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

TaskListRelationFilter _$TaskListRelationFilterFromJson(
        Map<String, dynamic> json) =>
    TaskListRelationFilter(
      every: json['every'] == null
          ? null
          : TaskWhereInput.fromJson(json['every'] as Map<String, dynamic>),
      some: json['some'] == null
          ? null
          : TaskWhereInput.fromJson(json['some'] as Map<String, dynamic>),
      none: json['none'] == null
          ? null
          : TaskWhereInput.fromJson(json['none'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TaskListRelationFilterToJson(
    TaskListRelationFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('every', instance.every?.toJson());
  writeNotNull('some', instance.some?.toJson());
  writeNotNull('none', instance.none?.toJson());
  return val;
}

TaskOrderByRelationAggregateInput _$TaskOrderByRelationAggregateInputFromJson(
        Map<String, dynamic> json) =>
    TaskOrderByRelationAggregateInput(
      $count: $enumDecodeNullable(_$SortOrderEnumMap, json['_count']),
    );

Map<String, dynamic> _$TaskOrderByRelationAggregateInputToJson(
    TaskOrderByRelationAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_count', _$SortOrderEnumMap[instance.$count]);
  return val;
}

TagCountOrderByAggregateInput _$TagCountOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    TagCountOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      name: $enumDecodeNullable(_$SortOrderEnumMap, json['name']),
      color: $enumDecodeNullable(_$SortOrderEnumMap, json['color']),
      updateAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updateAt']),
      syncAt: $enumDecodeNullable(_$SortOrderEnumMap, json['syncAt']),
      deleteAt: $enumDecodeNullable(_$SortOrderEnumMap, json['deleteAt']),
    );

Map<String, dynamic> _$TagCountOrderByAggregateInputToJson(
    TagCountOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('name', _$SortOrderEnumMap[instance.name]);
  writeNotNull('color', _$SortOrderEnumMap[instance.color]);
  writeNotNull('updateAt', _$SortOrderEnumMap[instance.updateAt]);
  writeNotNull('syncAt', _$SortOrderEnumMap[instance.syncAt]);
  writeNotNull('deleteAt', _$SortOrderEnumMap[instance.deleteAt]);
  return val;
}

TagAvgOrderByAggregateInput _$TagAvgOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    TagAvgOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      color: $enumDecodeNullable(_$SortOrderEnumMap, json['color']),
      updateAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updateAt']),
      syncAt: $enumDecodeNullable(_$SortOrderEnumMap, json['syncAt']),
      deleteAt: $enumDecodeNullable(_$SortOrderEnumMap, json['deleteAt']),
    );

Map<String, dynamic> _$TagAvgOrderByAggregateInputToJson(
    TagAvgOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('color', _$SortOrderEnumMap[instance.color]);
  writeNotNull('updateAt', _$SortOrderEnumMap[instance.updateAt]);
  writeNotNull('syncAt', _$SortOrderEnumMap[instance.syncAt]);
  writeNotNull('deleteAt', _$SortOrderEnumMap[instance.deleteAt]);
  return val;
}

TagMaxOrderByAggregateInput _$TagMaxOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    TagMaxOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      name: $enumDecodeNullable(_$SortOrderEnumMap, json['name']),
      color: $enumDecodeNullable(_$SortOrderEnumMap, json['color']),
      updateAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updateAt']),
      syncAt: $enumDecodeNullable(_$SortOrderEnumMap, json['syncAt']),
      deleteAt: $enumDecodeNullable(_$SortOrderEnumMap, json['deleteAt']),
    );

Map<String, dynamic> _$TagMaxOrderByAggregateInputToJson(
    TagMaxOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('name', _$SortOrderEnumMap[instance.name]);
  writeNotNull('color', _$SortOrderEnumMap[instance.color]);
  writeNotNull('updateAt', _$SortOrderEnumMap[instance.updateAt]);
  writeNotNull('syncAt', _$SortOrderEnumMap[instance.syncAt]);
  writeNotNull('deleteAt', _$SortOrderEnumMap[instance.deleteAt]);
  return val;
}

TagMinOrderByAggregateInput _$TagMinOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    TagMinOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      name: $enumDecodeNullable(_$SortOrderEnumMap, json['name']),
      color: $enumDecodeNullable(_$SortOrderEnumMap, json['color']),
      updateAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updateAt']),
      syncAt: $enumDecodeNullable(_$SortOrderEnumMap, json['syncAt']),
      deleteAt: $enumDecodeNullable(_$SortOrderEnumMap, json['deleteAt']),
    );

Map<String, dynamic> _$TagMinOrderByAggregateInputToJson(
    TagMinOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('name', _$SortOrderEnumMap[instance.name]);
  writeNotNull('color', _$SortOrderEnumMap[instance.color]);
  writeNotNull('updateAt', _$SortOrderEnumMap[instance.updateAt]);
  writeNotNull('syncAt', _$SortOrderEnumMap[instance.syncAt]);
  writeNotNull('deleteAt', _$SortOrderEnumMap[instance.deleteAt]);
  return val;
}

TagSumOrderByAggregateInput _$TagSumOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    TagSumOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      color: $enumDecodeNullable(_$SortOrderEnumMap, json['color']),
      updateAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updateAt']),
      syncAt: $enumDecodeNullable(_$SortOrderEnumMap, json['syncAt']),
      deleteAt: $enumDecodeNullable(_$SortOrderEnumMap, json['deleteAt']),
    );

Map<String, dynamic> _$TagSumOrderByAggregateInputToJson(
    TagSumOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('color', _$SortOrderEnumMap[instance.color]);
  writeNotNull('updateAt', _$SortOrderEnumMap[instance.updateAt]);
  writeNotNull('syncAt', _$SortOrderEnumMap[instance.syncAt]);
  writeNotNull('deleteAt', _$SortOrderEnumMap[instance.deleteAt]);
  return val;
}

CategoryCountOrderByAggregateInput _$CategoryCountOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    CategoryCountOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      name: $enumDecodeNullable(_$SortOrderEnumMap, json['name']),
      color: $enumDecodeNullable(_$SortOrderEnumMap, json['color']),
      updateAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updateAt']),
      syncAt: $enumDecodeNullable(_$SortOrderEnumMap, json['syncAt']),
      deleteAt: $enumDecodeNullable(_$SortOrderEnumMap, json['deleteAt']),
    );

Map<String, dynamic> _$CategoryCountOrderByAggregateInputToJson(
    CategoryCountOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('name', _$SortOrderEnumMap[instance.name]);
  writeNotNull('color', _$SortOrderEnumMap[instance.color]);
  writeNotNull('updateAt', _$SortOrderEnumMap[instance.updateAt]);
  writeNotNull('syncAt', _$SortOrderEnumMap[instance.syncAt]);
  writeNotNull('deleteAt', _$SortOrderEnumMap[instance.deleteAt]);
  return val;
}

CategoryAvgOrderByAggregateInput _$CategoryAvgOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    CategoryAvgOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      color: $enumDecodeNullable(_$SortOrderEnumMap, json['color']),
      updateAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updateAt']),
      syncAt: $enumDecodeNullable(_$SortOrderEnumMap, json['syncAt']),
      deleteAt: $enumDecodeNullable(_$SortOrderEnumMap, json['deleteAt']),
    );

Map<String, dynamic> _$CategoryAvgOrderByAggregateInputToJson(
    CategoryAvgOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('color', _$SortOrderEnumMap[instance.color]);
  writeNotNull('updateAt', _$SortOrderEnumMap[instance.updateAt]);
  writeNotNull('syncAt', _$SortOrderEnumMap[instance.syncAt]);
  writeNotNull('deleteAt', _$SortOrderEnumMap[instance.deleteAt]);
  return val;
}

CategoryMaxOrderByAggregateInput _$CategoryMaxOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    CategoryMaxOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      name: $enumDecodeNullable(_$SortOrderEnumMap, json['name']),
      color: $enumDecodeNullable(_$SortOrderEnumMap, json['color']),
      updateAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updateAt']),
      syncAt: $enumDecodeNullable(_$SortOrderEnumMap, json['syncAt']),
      deleteAt: $enumDecodeNullable(_$SortOrderEnumMap, json['deleteAt']),
    );

Map<String, dynamic> _$CategoryMaxOrderByAggregateInputToJson(
    CategoryMaxOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('name', _$SortOrderEnumMap[instance.name]);
  writeNotNull('color', _$SortOrderEnumMap[instance.color]);
  writeNotNull('updateAt', _$SortOrderEnumMap[instance.updateAt]);
  writeNotNull('syncAt', _$SortOrderEnumMap[instance.syncAt]);
  writeNotNull('deleteAt', _$SortOrderEnumMap[instance.deleteAt]);
  return val;
}

CategoryMinOrderByAggregateInput _$CategoryMinOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    CategoryMinOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      name: $enumDecodeNullable(_$SortOrderEnumMap, json['name']),
      color: $enumDecodeNullable(_$SortOrderEnumMap, json['color']),
      updateAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updateAt']),
      syncAt: $enumDecodeNullable(_$SortOrderEnumMap, json['syncAt']),
      deleteAt: $enumDecodeNullable(_$SortOrderEnumMap, json['deleteAt']),
    );

Map<String, dynamic> _$CategoryMinOrderByAggregateInputToJson(
    CategoryMinOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('name', _$SortOrderEnumMap[instance.name]);
  writeNotNull('color', _$SortOrderEnumMap[instance.color]);
  writeNotNull('updateAt', _$SortOrderEnumMap[instance.updateAt]);
  writeNotNull('syncAt', _$SortOrderEnumMap[instance.syncAt]);
  writeNotNull('deleteAt', _$SortOrderEnumMap[instance.deleteAt]);
  return val;
}

CategorySumOrderByAggregateInput _$CategorySumOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    CategorySumOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      color: $enumDecodeNullable(_$SortOrderEnumMap, json['color']),
      updateAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updateAt']),
      syncAt: $enumDecodeNullable(_$SortOrderEnumMap, json['syncAt']),
      deleteAt: $enumDecodeNullable(_$SortOrderEnumMap, json['deleteAt']),
    );

Map<String, dynamic> _$CategorySumOrderByAggregateInputToJson(
    CategorySumOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('color', _$SortOrderEnumMap[instance.color]);
  writeNotNull('updateAt', _$SortOrderEnumMap[instance.updateAt]);
  writeNotNull('syncAt', _$SortOrderEnumMap[instance.syncAt]);
  writeNotNull('deleteAt', _$SortOrderEnumMap[instance.deleteAt]);
  return val;
}

TagCreateNestedManyWithoutTasksInput
    _$TagCreateNestedManyWithoutTasksInputFromJson(Map<String, dynamic> json) =>
        TagCreateNestedManyWithoutTasksInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              TagCreateWithoutTasksInput.fromJson(e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => TagCreateOrConnectWithoutTasksInput.fromJson(
                  e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map(
              (e) => TagWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$TagCreateNestedManyWithoutTasksInputToJson(
    TagCreateNestedManyWithoutTasksInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  return val;
}

CategoryCreateNestedOneWithoutTasksInput
    _$CategoryCreateNestedOneWithoutTasksInputFromJson(
            Map<String, dynamic> json) =>
        CategoryCreateNestedOneWithoutTasksInput(
          create: json['create'] == null
              ? null
              : CategoryCreateWithoutTasksInput.fromJson(
                  json['create'] as Map<String, dynamic>),
          connectOrCreate: json['connectOrCreate'] == null
              ? null
              : CategoryCreateOrConnectWithoutTasksInput.fromJson(
                  json['connectOrCreate'] as Map<String, dynamic>),
          connect: json['connect'] == null
              ? null
              : CategoryWhereUniqueInput.fromJson(
                  json['connect'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CategoryCreateNestedOneWithoutTasksInputToJson(
    CategoryCreateNestedOneWithoutTasksInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.toJson());
  writeNotNull('connectOrCreate', instance.connectOrCreate?.toJson());
  writeNotNull('connect', instance.connect?.toJson());
  return val;
}

TagUncheckedCreateNestedManyWithoutTasksInput
    _$TagUncheckedCreateNestedManyWithoutTasksInputFromJson(
            Map<String, dynamic> json) =>
        TagUncheckedCreateNestedManyWithoutTasksInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              TagCreateWithoutTasksInput.fromJson(e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => TagCreateOrConnectWithoutTasksInput.fromJson(
                  e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map(
              (e) => TagWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$TagUncheckedCreateNestedManyWithoutTasksInputToJson(
    TagUncheckedCreateNestedManyWithoutTasksInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  return val;
}

StringFieldUpdateOperationsInput _$StringFieldUpdateOperationsInputFromJson(
        Map<String, dynamic> json) =>
    StringFieldUpdateOperationsInput(
      set: json['set'] as String?,
    );

Map<String, dynamic> _$StringFieldUpdateOperationsInputToJson(
    StringFieldUpdateOperationsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('set', instance.set);
  return val;
}

BoolFieldUpdateOperationsInput _$BoolFieldUpdateOperationsInputFromJson(
        Map<String, dynamic> json) =>
    BoolFieldUpdateOperationsInput(
      set: json['set'] as bool?,
    );

Map<String, dynamic> _$BoolFieldUpdateOperationsInputToJson(
    BoolFieldUpdateOperationsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('set', instance.set);
  return val;
}

BigIntFieldUpdateOperationsInput _$BigIntFieldUpdateOperationsInputFromJson(
        Map<String, dynamic> json) =>
    BigIntFieldUpdateOperationsInput(
      set: json['set'] == null ? null : BigInt.parse(json['set'] as String),
      increment: json['increment'] == null
          ? null
          : BigInt.parse(json['increment'] as String),
      decrement: json['decrement'] == null
          ? null
          : BigInt.parse(json['decrement'] as String),
      multiply: json['multiply'] == null
          ? null
          : BigInt.parse(json['multiply'] as String),
      divide: json['divide'] == null
          ? null
          : BigInt.parse(json['divide'] as String),
    );

Map<String, dynamic> _$BigIntFieldUpdateOperationsInputToJson(
    BigIntFieldUpdateOperationsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('set', instance.set?.toString());
  writeNotNull('increment', instance.increment?.toString());
  writeNotNull('decrement', instance.decrement?.toString());
  writeNotNull('multiply', instance.multiply?.toString());
  writeNotNull('divide', instance.divide?.toString());
  return val;
}

TagUpdateManyWithoutTasksNestedInput
    _$TagUpdateManyWithoutTasksNestedInputFromJson(Map<String, dynamic> json) =>
        TagUpdateManyWithoutTasksNestedInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              TagCreateWithoutTasksInput.fromJson(e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => TagCreateOrConnectWithoutTasksInput.fromJson(
                  e as Map<String, dynamic>)),
          upsert: (json['upsert'] as List<dynamic>?)?.map((e) =>
              TagUpsertWithWhereUniqueWithoutTasksInput.fromJson(
                  e as Map<String, dynamic>)),
          set: (json['set'] as List<dynamic>?)?.map(
              (e) => TagWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          disconnect: (json['disconnect'] as List<dynamic>?)?.map(
              (e) => TagWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          delete: (json['delete'] as List<dynamic>?)?.map(
              (e) => TagWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map(
              (e) => TagWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          update: (json['update'] as List<dynamic>?)?.map((e) =>
              TagUpdateWithWhereUniqueWithoutTasksInput.fromJson(
                  e as Map<String, dynamic>)),
          updateMany: (json['updateMany'] as List<dynamic>?)?.map((e) =>
              TagUpdateManyWithWhereWithoutTasksInput.fromJson(
                  e as Map<String, dynamic>)),
          deleteMany: (json['deleteMany'] as List<dynamic>?)?.map(
              (e) => TagScalarWhereInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$TagUpdateManyWithoutTasksNestedInputToJson(
    TagUpdateManyWithoutTasksNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('upsert', instance.upsert?.map((e) => e.toJson()).toList());
  writeNotNull('set', instance.set?.map((e) => e.toJson()).toList());
  writeNotNull(
      'disconnect', instance.disconnect?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull(
      'updateMany', instance.updateMany?.map((e) => e.toJson()).toList());
  writeNotNull(
      'deleteMany', instance.deleteMany?.map((e) => e.toJson()).toList());
  return val;
}

CategoryUpdateOneRequiredWithoutTasksNestedInput
    _$CategoryUpdateOneRequiredWithoutTasksNestedInputFromJson(
            Map<String, dynamic> json) =>
        CategoryUpdateOneRequiredWithoutTasksNestedInput(
          create: json['create'] == null
              ? null
              : CategoryCreateWithoutTasksInput.fromJson(
                  json['create'] as Map<String, dynamic>),
          connectOrCreate: json['connectOrCreate'] == null
              ? null
              : CategoryCreateOrConnectWithoutTasksInput.fromJson(
                  json['connectOrCreate'] as Map<String, dynamic>),
          upsert: json['upsert'] == null
              ? null
              : CategoryUpsertWithoutTasksInput.fromJson(
                  json['upsert'] as Map<String, dynamic>),
          connect: json['connect'] == null
              ? null
              : CategoryWhereUniqueInput.fromJson(
                  json['connect'] as Map<String, dynamic>),
          update: json['update'] == null
              ? null
              : CategoryUpdateWithoutTasksInput.fromJson(
                  json['update'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CategoryUpdateOneRequiredWithoutTasksNestedInputToJson(
    CategoryUpdateOneRequiredWithoutTasksNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.toJson());
  writeNotNull('connectOrCreate', instance.connectOrCreate?.toJson());
  writeNotNull('upsert', instance.upsert?.toJson());
  writeNotNull('connect', instance.connect?.toJson());
  writeNotNull('update', instance.update?.toJson());
  return val;
}

IntFieldUpdateOperationsInput _$IntFieldUpdateOperationsInputFromJson(
        Map<String, dynamic> json) =>
    IntFieldUpdateOperationsInput(
      set: json['set'] as int?,
      increment: json['increment'] as int?,
      decrement: json['decrement'] as int?,
      multiply: json['multiply'] as int?,
      divide: json['divide'] as int?,
    );

Map<String, dynamic> _$IntFieldUpdateOperationsInputToJson(
    IntFieldUpdateOperationsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('set', instance.set);
  writeNotNull('increment', instance.increment);
  writeNotNull('decrement', instance.decrement);
  writeNotNull('multiply', instance.multiply);
  writeNotNull('divide', instance.divide);
  return val;
}

TagUncheckedUpdateManyWithoutTasksNestedInput
    _$TagUncheckedUpdateManyWithoutTasksNestedInputFromJson(
            Map<String, dynamic> json) =>
        TagUncheckedUpdateManyWithoutTasksNestedInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              TagCreateWithoutTasksInput.fromJson(e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => TagCreateOrConnectWithoutTasksInput.fromJson(
                  e as Map<String, dynamic>)),
          upsert: (json['upsert'] as List<dynamic>?)?.map((e) =>
              TagUpsertWithWhereUniqueWithoutTasksInput.fromJson(
                  e as Map<String, dynamic>)),
          set: (json['set'] as List<dynamic>?)?.map(
              (e) => TagWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          disconnect: (json['disconnect'] as List<dynamic>?)?.map(
              (e) => TagWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          delete: (json['delete'] as List<dynamic>?)?.map(
              (e) => TagWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map(
              (e) => TagWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          update: (json['update'] as List<dynamic>?)?.map((e) =>
              TagUpdateWithWhereUniqueWithoutTasksInput.fromJson(
                  e as Map<String, dynamic>)),
          updateMany: (json['updateMany'] as List<dynamic>?)?.map((e) =>
              TagUpdateManyWithWhereWithoutTasksInput.fromJson(
                  e as Map<String, dynamic>)),
          deleteMany: (json['deleteMany'] as List<dynamic>?)?.map(
              (e) => TagScalarWhereInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$TagUncheckedUpdateManyWithoutTasksNestedInputToJson(
    TagUncheckedUpdateManyWithoutTasksNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('upsert', instance.upsert?.map((e) => e.toJson()).toList());
  writeNotNull('set', instance.set?.map((e) => e.toJson()).toList());
  writeNotNull(
      'disconnect', instance.disconnect?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull(
      'updateMany', instance.updateMany?.map((e) => e.toJson()).toList());
  writeNotNull(
      'deleteMany', instance.deleteMany?.map((e) => e.toJson()).toList());
  return val;
}

TaskCreateNestedManyWithoutTagsInput
    _$TaskCreateNestedManyWithoutTagsInputFromJson(Map<String, dynamic> json) =>
        TaskCreateNestedManyWithoutTagsInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              TaskCreateWithoutTagsInput.fromJson(e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => TaskCreateOrConnectWithoutTagsInput.fromJson(
                  e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map(
              (e) => TaskWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$TaskCreateNestedManyWithoutTagsInputToJson(
    TaskCreateNestedManyWithoutTagsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  return val;
}

TaskUncheckedCreateNestedManyWithoutTagsInput
    _$TaskUncheckedCreateNestedManyWithoutTagsInputFromJson(
            Map<String, dynamic> json) =>
        TaskUncheckedCreateNestedManyWithoutTagsInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              TaskCreateWithoutTagsInput.fromJson(e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => TaskCreateOrConnectWithoutTagsInput.fromJson(
                  e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map(
              (e) => TaskWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$TaskUncheckedCreateNestedManyWithoutTagsInputToJson(
    TaskUncheckedCreateNestedManyWithoutTagsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  return val;
}

TaskUpdateManyWithoutTagsNestedInput
    _$TaskUpdateManyWithoutTagsNestedInputFromJson(Map<String, dynamic> json) =>
        TaskUpdateManyWithoutTagsNestedInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              TaskCreateWithoutTagsInput.fromJson(e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => TaskCreateOrConnectWithoutTagsInput.fromJson(
                  e as Map<String, dynamic>)),
          upsert: (json['upsert'] as List<dynamic>?)?.map((e) =>
              TaskUpsertWithWhereUniqueWithoutTagsInput.fromJson(
                  e as Map<String, dynamic>)),
          set: (json['set'] as List<dynamic>?)?.map(
              (e) => TaskWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          disconnect: (json['disconnect'] as List<dynamic>?)?.map(
              (e) => TaskWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          delete: (json['delete'] as List<dynamic>?)?.map(
              (e) => TaskWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map(
              (e) => TaskWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          update: (json['update'] as List<dynamic>?)?.map((e) =>
              TaskUpdateWithWhereUniqueWithoutTagsInput.fromJson(
                  e as Map<String, dynamic>)),
          updateMany: (json['updateMany'] as List<dynamic>?)?.map((e) =>
              TaskUpdateManyWithWhereWithoutTagsInput.fromJson(
                  e as Map<String, dynamic>)),
          deleteMany: (json['deleteMany'] as List<dynamic>?)?.map(
              (e) => TaskScalarWhereInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$TaskUpdateManyWithoutTagsNestedInputToJson(
    TaskUpdateManyWithoutTagsNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('upsert', instance.upsert?.map((e) => e.toJson()).toList());
  writeNotNull('set', instance.set?.map((e) => e.toJson()).toList());
  writeNotNull(
      'disconnect', instance.disconnect?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull(
      'updateMany', instance.updateMany?.map((e) => e.toJson()).toList());
  writeNotNull(
      'deleteMany', instance.deleteMany?.map((e) => e.toJson()).toList());
  return val;
}

TaskUncheckedUpdateManyWithoutTagsNestedInput
    _$TaskUncheckedUpdateManyWithoutTagsNestedInputFromJson(
            Map<String, dynamic> json) =>
        TaskUncheckedUpdateManyWithoutTagsNestedInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              TaskCreateWithoutTagsInput.fromJson(e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => TaskCreateOrConnectWithoutTagsInput.fromJson(
                  e as Map<String, dynamic>)),
          upsert: (json['upsert'] as List<dynamic>?)?.map((e) =>
              TaskUpsertWithWhereUniqueWithoutTagsInput.fromJson(
                  e as Map<String, dynamic>)),
          set: (json['set'] as List<dynamic>?)?.map(
              (e) => TaskWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          disconnect: (json['disconnect'] as List<dynamic>?)?.map(
              (e) => TaskWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          delete: (json['delete'] as List<dynamic>?)?.map(
              (e) => TaskWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map(
              (e) => TaskWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          update: (json['update'] as List<dynamic>?)?.map((e) =>
              TaskUpdateWithWhereUniqueWithoutTagsInput.fromJson(
                  e as Map<String, dynamic>)),
          updateMany: (json['updateMany'] as List<dynamic>?)?.map((e) =>
              TaskUpdateManyWithWhereWithoutTagsInput.fromJson(
                  e as Map<String, dynamic>)),
          deleteMany: (json['deleteMany'] as List<dynamic>?)?.map(
              (e) => TaskScalarWhereInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$TaskUncheckedUpdateManyWithoutTagsNestedInputToJson(
    TaskUncheckedUpdateManyWithoutTagsNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('upsert', instance.upsert?.map((e) => e.toJson()).toList());
  writeNotNull('set', instance.set?.map((e) => e.toJson()).toList());
  writeNotNull(
      'disconnect', instance.disconnect?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull(
      'updateMany', instance.updateMany?.map((e) => e.toJson()).toList());
  writeNotNull(
      'deleteMany', instance.deleteMany?.map((e) => e.toJson()).toList());
  return val;
}

TaskCreateNestedManyWithoutCategoryInput
    _$TaskCreateNestedManyWithoutCategoryInputFromJson(
            Map<String, dynamic> json) =>
        TaskCreateNestedManyWithoutCategoryInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              TaskCreateWithoutCategoryInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => TaskCreateOrConnectWithoutCategoryInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : TaskCreateManyCategoryInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          connect: (json['connect'] as List<dynamic>?)?.map(
              (e) => TaskWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$TaskCreateNestedManyWithoutCategoryInputToJson(
    TaskCreateNestedManyWithoutCategoryInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  return val;
}

TaskUncheckedCreateNestedManyWithoutCategoryInput
    _$TaskUncheckedCreateNestedManyWithoutCategoryInputFromJson(
            Map<String, dynamic> json) =>
        TaskUncheckedCreateNestedManyWithoutCategoryInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              TaskCreateWithoutCategoryInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => TaskCreateOrConnectWithoutCategoryInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : TaskCreateManyCategoryInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          connect: (json['connect'] as List<dynamic>?)?.map(
              (e) => TaskWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$TaskUncheckedCreateNestedManyWithoutCategoryInputToJson(
    TaskUncheckedCreateNestedManyWithoutCategoryInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  return val;
}

TaskUpdateManyWithoutCategoryNestedInput
    _$TaskUpdateManyWithoutCategoryNestedInputFromJson(
            Map<String, dynamic> json) =>
        TaskUpdateManyWithoutCategoryNestedInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              TaskCreateWithoutCategoryInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => TaskCreateOrConnectWithoutCategoryInput.fromJson(
                  e as Map<String, dynamic>)),
          upsert: (json['upsert'] as List<dynamic>?)?.map((e) =>
              TaskUpsertWithWhereUniqueWithoutCategoryInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : TaskCreateManyCategoryInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          set: (json['set'] as List<dynamic>?)?.map(
              (e) => TaskWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          disconnect: (json['disconnect'] as List<dynamic>?)?.map(
              (e) => TaskWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          delete: (json['delete'] as List<dynamic>?)?.map(
              (e) => TaskWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map(
              (e) => TaskWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          update: (json['update'] as List<dynamic>?)?.map((e) =>
              TaskUpdateWithWhereUniqueWithoutCategoryInput.fromJson(
                  e as Map<String, dynamic>)),
          updateMany: (json['updateMany'] as List<dynamic>?)?.map((e) =>
              TaskUpdateManyWithWhereWithoutCategoryInput.fromJson(
                  e as Map<String, dynamic>)),
          deleteMany: (json['deleteMany'] as List<dynamic>?)?.map(
              (e) => TaskScalarWhereInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$TaskUpdateManyWithoutCategoryNestedInputToJson(
    TaskUpdateManyWithoutCategoryNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('upsert', instance.upsert?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('set', instance.set?.map((e) => e.toJson()).toList());
  writeNotNull(
      'disconnect', instance.disconnect?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull(
      'updateMany', instance.updateMany?.map((e) => e.toJson()).toList());
  writeNotNull(
      'deleteMany', instance.deleteMany?.map((e) => e.toJson()).toList());
  return val;
}

TaskUncheckedUpdateManyWithoutCategoryNestedInput
    _$TaskUncheckedUpdateManyWithoutCategoryNestedInputFromJson(
            Map<String, dynamic> json) =>
        TaskUncheckedUpdateManyWithoutCategoryNestedInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              TaskCreateWithoutCategoryInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => TaskCreateOrConnectWithoutCategoryInput.fromJson(
                  e as Map<String, dynamic>)),
          upsert: (json['upsert'] as List<dynamic>?)?.map((e) =>
              TaskUpsertWithWhereUniqueWithoutCategoryInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : TaskCreateManyCategoryInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          set: (json['set'] as List<dynamic>?)?.map(
              (e) => TaskWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          disconnect: (json['disconnect'] as List<dynamic>?)?.map(
              (e) => TaskWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          delete: (json['delete'] as List<dynamic>?)?.map(
              (e) => TaskWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map(
              (e) => TaskWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          update: (json['update'] as List<dynamic>?)?.map((e) =>
              TaskUpdateWithWhereUniqueWithoutCategoryInput.fromJson(
                  e as Map<String, dynamic>)),
          updateMany: (json['updateMany'] as List<dynamic>?)?.map((e) =>
              TaskUpdateManyWithWhereWithoutCategoryInput.fromJson(
                  e as Map<String, dynamic>)),
          deleteMany: (json['deleteMany'] as List<dynamic>?)?.map(
              (e) => TaskScalarWhereInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$TaskUncheckedUpdateManyWithoutCategoryNestedInputToJson(
    TaskUncheckedUpdateManyWithoutCategoryNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('upsert', instance.upsert?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('set', instance.set?.map((e) => e.toJson()).toList());
  writeNotNull(
      'disconnect', instance.disconnect?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull(
      'updateMany', instance.updateMany?.map((e) => e.toJson()).toList());
  writeNotNull(
      'deleteMany', instance.deleteMany?.map((e) => e.toJson()).toList());
  return val;
}

NestedIntFilter _$NestedIntFilterFromJson(Map<String, dynamic> json) =>
    NestedIntFilter(
      equals: json['equals'] as int?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as int),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedIntFilterToJson(NestedIntFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedStringFilter _$NestedStringFilterFromJson(Map<String, dynamic> json) =>
    NestedStringFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedStringFilterToJson(NestedStringFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedBoolFilter _$NestedBoolFilterFromJson(Map<String, dynamic> json) =>
    NestedBoolFilter(
      equals: json['equals'] as bool?,
      not: json['not'] == null
          ? null
          : NestedBoolFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedBoolFilterToJson(NestedBoolFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedBigIntFilter _$NestedBigIntFilterFromJson(Map<String, dynamic> json) =>
    NestedBigIntFilter(
      equals: json['equals'] == null
          ? null
          : BigInt.parse(json['equals'] as String),
      $in:
          (json['in'] as List<dynamic>?)?.map((e) => BigInt.parse(e as String)),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => BigInt.parse(e as String)),
      lt: json['lt'] == null ? null : BigInt.parse(json['lt'] as String),
      lte: json['lte'] == null ? null : BigInt.parse(json['lte'] as String),
      gt: json['gt'] == null ? null : BigInt.parse(json['gt'] as String),
      gte: json['gte'] == null ? null : BigInt.parse(json['gte'] as String),
      not: json['not'] == null
          ? null
          : NestedBigIntFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedBigIntFilterToJson(NestedBigIntFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals?.toString());
  writeNotNull('in', instance.$in?.map((e) => e.toString()).toList());
  writeNotNull('notIn', instance.notIn?.map((e) => e.toString()).toList());
  writeNotNull('lt', instance.lt?.toString());
  writeNotNull('lte', instance.lte?.toString());
  writeNotNull('gt', instance.gt?.toString());
  writeNotNull('gte', instance.gte?.toString());
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedIntWithAggregatesFilter _$NestedIntWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    NestedIntWithAggregatesFilter(
      equals: json['equals'] as int?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as int),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : NestedFloatFilter.fromJson(json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : NestedIntFilter.fromJson(json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedIntFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedIntFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedIntWithAggregatesFilterToJson(
    NestedIntWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

NestedFloatFilter _$NestedFloatFilterFromJson(Map<String, dynamic> json) =>
    NestedFloatFilter(
      equals: (json['equals'] as num?)?.toDouble(),
      $in: (json['in'] as List<dynamic>?)?.map((e) => (e as num).toDouble()),
      notIn:
          (json['notIn'] as List<dynamic>?)?.map((e) => (e as num).toDouble()),
      lt: (json['lt'] as num?)?.toDouble(),
      lte: (json['lte'] as num?)?.toDouble(),
      gt: (json['gt'] as num?)?.toDouble(),
      gte: (json['gte'] as num?)?.toDouble(),
      not: json['not'] == null
          ? null
          : NestedFloatFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedFloatFilterToJson(NestedFloatFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedStringWithAggregatesFilter _$NestedStringWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    NestedStringWithAggregatesFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedStringFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedStringFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedStringWithAggregatesFilterToJson(
    NestedStringWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

NestedBoolWithAggregatesFilter _$NestedBoolWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    NestedBoolWithAggregatesFilter(
      equals: json['equals'] as bool?,
      not: json['not'] == null
          ? null
          : NestedBoolWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedBoolFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedBoolFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedBoolWithAggregatesFilterToJson(
    NestedBoolWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

NestedBigIntWithAggregatesFilter _$NestedBigIntWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    NestedBigIntWithAggregatesFilter(
      equals: json['equals'] == null
          ? null
          : BigInt.parse(json['equals'] as String),
      $in:
          (json['in'] as List<dynamic>?)?.map((e) => BigInt.parse(e as String)),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => BigInt.parse(e as String)),
      lt: json['lt'] == null ? null : BigInt.parse(json['lt'] as String),
      lte: json['lte'] == null ? null : BigInt.parse(json['lte'] as String),
      gt: json['gt'] == null ? null : BigInt.parse(json['gt'] as String),
      gte: json['gte'] == null ? null : BigInt.parse(json['gte'] as String),
      not: json['not'] == null
          ? null
          : NestedBigIntWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : NestedFloatFilter.fromJson(json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : NestedBigIntFilter.fromJson(json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedBigIntFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedBigIntFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedBigIntWithAggregatesFilterToJson(
    NestedBigIntWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals?.toString());
  writeNotNull('in', instance.$in?.map((e) => e.toString()).toList());
  writeNotNull('notIn', instance.notIn?.map((e) => e.toString()).toList());
  writeNotNull('lt', instance.lt?.toString());
  writeNotNull('lte', instance.lte?.toString());
  writeNotNull('gt', instance.gt?.toString());
  writeNotNull('gte', instance.gte?.toString());
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

TagCreateWithoutTasksInput _$TagCreateWithoutTasksInputFromJson(
        Map<String, dynamic> json) =>
    TagCreateWithoutTasksInput(
      name: json['name'] as String,
      color: json['color'] as int,
      updateAt: BigInt.parse(json['updateAt'] as String),
      syncAt: BigInt.parse(json['syncAt'] as String),
      deleteAt: BigInt.parse(json['deleteAt'] as String),
    );

Map<String, dynamic> _$TagCreateWithoutTasksInputToJson(
        TagCreateWithoutTasksInput instance) =>
    <String, dynamic>{
      'name': instance.name,
      'color': instance.color,
      'updateAt': instance.updateAt.toString(),
      'syncAt': instance.syncAt.toString(),
      'deleteAt': instance.deleteAt.toString(),
    };

TagUncheckedCreateWithoutTasksInput
    _$TagUncheckedCreateWithoutTasksInputFromJson(Map<String, dynamic> json) =>
        TagUncheckedCreateWithoutTasksInput(
          id: json['id'] as int?,
          name: json['name'] as String,
          color: json['color'] as int,
          updateAt: BigInt.parse(json['updateAt'] as String),
          syncAt: BigInt.parse(json['syncAt'] as String),
          deleteAt: BigInt.parse(json['deleteAt'] as String),
        );

Map<String, dynamic> _$TagUncheckedCreateWithoutTasksInputToJson(
    TagUncheckedCreateWithoutTasksInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['name'] = instance.name;
  val['color'] = instance.color;
  val['updateAt'] = instance.updateAt.toString();
  val['syncAt'] = instance.syncAt.toString();
  val['deleteAt'] = instance.deleteAt.toString();
  return val;
}

TagCreateOrConnectWithoutTasksInput
    _$TagCreateOrConnectWithoutTasksInputFromJson(Map<String, dynamic> json) =>
        TagCreateOrConnectWithoutTasksInput(
          where: TagWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          create: TagCreateWithoutTasksInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$TagCreateOrConnectWithoutTasksInputToJson(
        TagCreateOrConnectWithoutTasksInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'create': instance.create.toJson(),
    };

CategoryCreateWithoutTasksInput _$CategoryCreateWithoutTasksInputFromJson(
        Map<String, dynamic> json) =>
    CategoryCreateWithoutTasksInput(
      name: json['name'] as String,
      color: json['color'] as int,
      updateAt: BigInt.parse(json['updateAt'] as String),
      syncAt: BigInt.parse(json['syncAt'] as String),
      deleteAt: BigInt.parse(json['deleteAt'] as String),
    );

Map<String, dynamic> _$CategoryCreateWithoutTasksInputToJson(
        CategoryCreateWithoutTasksInput instance) =>
    <String, dynamic>{
      'name': instance.name,
      'color': instance.color,
      'updateAt': instance.updateAt.toString(),
      'syncAt': instance.syncAt.toString(),
      'deleteAt': instance.deleteAt.toString(),
    };

CategoryUncheckedCreateWithoutTasksInput
    _$CategoryUncheckedCreateWithoutTasksInputFromJson(
            Map<String, dynamic> json) =>
        CategoryUncheckedCreateWithoutTasksInput(
          id: json['id'] as int?,
          name: json['name'] as String,
          color: json['color'] as int,
          updateAt: BigInt.parse(json['updateAt'] as String),
          syncAt: BigInt.parse(json['syncAt'] as String),
          deleteAt: BigInt.parse(json['deleteAt'] as String),
        );

Map<String, dynamic> _$CategoryUncheckedCreateWithoutTasksInputToJson(
    CategoryUncheckedCreateWithoutTasksInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['name'] = instance.name;
  val['color'] = instance.color;
  val['updateAt'] = instance.updateAt.toString();
  val['syncAt'] = instance.syncAt.toString();
  val['deleteAt'] = instance.deleteAt.toString();
  return val;
}

CategoryCreateOrConnectWithoutTasksInput
    _$CategoryCreateOrConnectWithoutTasksInputFromJson(
            Map<String, dynamic> json) =>
        CategoryCreateOrConnectWithoutTasksInput(
          where: CategoryWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          create: CategoryCreateWithoutTasksInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CategoryCreateOrConnectWithoutTasksInputToJson(
        CategoryCreateOrConnectWithoutTasksInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'create': instance.create.toJson(),
    };

TagUpsertWithWhereUniqueWithoutTasksInput
    _$TagUpsertWithWhereUniqueWithoutTasksInputFromJson(
            Map<String, dynamic> json) =>
        TagUpsertWithWhereUniqueWithoutTasksInput(
          where: TagWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          update: TagUpdateWithoutTasksInput.fromJson(
              json['update'] as Map<String, dynamic>),
          create: TagCreateWithoutTasksInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$TagUpsertWithWhereUniqueWithoutTasksInputToJson(
        TagUpsertWithWhereUniqueWithoutTasksInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'update': instance.update.toJson(),
      'create': instance.create.toJson(),
    };

TagUpdateWithWhereUniqueWithoutTasksInput
    _$TagUpdateWithWhereUniqueWithoutTasksInputFromJson(
            Map<String, dynamic> json) =>
        TagUpdateWithWhereUniqueWithoutTasksInput(
          where: TagWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          data: TagUpdateWithoutTasksInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$TagUpdateWithWhereUniqueWithoutTasksInputToJson(
        TagUpdateWithWhereUniqueWithoutTasksInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'data': instance.data.toJson(),
    };

TagUpdateManyWithWhereWithoutTasksInput
    _$TagUpdateManyWithWhereWithoutTasksInputFromJson(
            Map<String, dynamic> json) =>
        TagUpdateManyWithWhereWithoutTasksInput(
          where: TagScalarWhereInput.fromJson(
              json['where'] as Map<String, dynamic>),
          data: TagUpdateManyMutationInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$TagUpdateManyWithWhereWithoutTasksInputToJson(
        TagUpdateManyWithWhereWithoutTasksInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'data': instance.data.toJson(),
    };

TagScalarWhereInput _$TagScalarWhereInputFromJson(Map<String, dynamic> json) =>
    TagScalarWhereInput(
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => TagScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => TagScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)
          ?.map((e) => TagScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      id: json['id'] == null
          ? null
          : IntFilter.fromJson(json['id'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringFilter.fromJson(json['name'] as Map<String, dynamic>),
      color: json['color'] == null
          ? null
          : IntFilter.fromJson(json['color'] as Map<String, dynamic>),
      updateAt: json['updateAt'] == null
          ? null
          : BigIntFilter.fromJson(json['updateAt'] as Map<String, dynamic>),
      syncAt: json['syncAt'] == null
          ? null
          : BigIntFilter.fromJson(json['syncAt'] as Map<String, dynamic>),
      deleteAt: json['deleteAt'] == null
          ? null
          : BigIntFilter.fromJson(json['deleteAt'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TagScalarWhereInputToJson(TagScalarWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('color', instance.color?.toJson());
  writeNotNull('updateAt', instance.updateAt?.toJson());
  writeNotNull('syncAt', instance.syncAt?.toJson());
  writeNotNull('deleteAt', instance.deleteAt?.toJson());
  return val;
}

CategoryUpsertWithoutTasksInput _$CategoryUpsertWithoutTasksInputFromJson(
        Map<String, dynamic> json) =>
    CategoryUpsertWithoutTasksInput(
      update: CategoryUpdateWithoutTasksInput.fromJson(
          json['update'] as Map<String, dynamic>),
      create: CategoryCreateWithoutTasksInput.fromJson(
          json['create'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CategoryUpsertWithoutTasksInputToJson(
        CategoryUpsertWithoutTasksInput instance) =>
    <String, dynamic>{
      'update': instance.update.toJson(),
      'create': instance.create.toJson(),
    };

CategoryUpdateWithoutTasksInput _$CategoryUpdateWithoutTasksInputFromJson(
        Map<String, dynamic> json) =>
    CategoryUpdateWithoutTasksInput(
      name: json['name'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['name'] as Map<String, dynamic>),
      color: json['color'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['color'] as Map<String, dynamic>),
      updateAt: json['updateAt'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['updateAt'] as Map<String, dynamic>),
      syncAt: json['syncAt'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['syncAt'] as Map<String, dynamic>),
      deleteAt: json['deleteAt'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['deleteAt'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CategoryUpdateWithoutTasksInputToJson(
    CategoryUpdateWithoutTasksInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name?.toJson());
  writeNotNull('color', instance.color?.toJson());
  writeNotNull('updateAt', instance.updateAt?.toJson());
  writeNotNull('syncAt', instance.syncAt?.toJson());
  writeNotNull('deleteAt', instance.deleteAt?.toJson());
  return val;
}

CategoryUncheckedUpdateWithoutTasksInput
    _$CategoryUncheckedUpdateWithoutTasksInputFromJson(
            Map<String, dynamic> json) =>
        CategoryUncheckedUpdateWithoutTasksInput(
          id: json['id'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          name: json['name'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['name'] as Map<String, dynamic>),
          color: json['color'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['color'] as Map<String, dynamic>),
          updateAt: json['updateAt'] == null
              ? null
              : BigIntFieldUpdateOperationsInput.fromJson(
                  json['updateAt'] as Map<String, dynamic>),
          syncAt: json['syncAt'] == null
              ? null
              : BigIntFieldUpdateOperationsInput.fromJson(
                  json['syncAt'] as Map<String, dynamic>),
          deleteAt: json['deleteAt'] == null
              ? null
              : BigIntFieldUpdateOperationsInput.fromJson(
                  json['deleteAt'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CategoryUncheckedUpdateWithoutTasksInputToJson(
    CategoryUncheckedUpdateWithoutTasksInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('color', instance.color?.toJson());
  writeNotNull('updateAt', instance.updateAt?.toJson());
  writeNotNull('syncAt', instance.syncAt?.toJson());
  writeNotNull('deleteAt', instance.deleteAt?.toJson());
  return val;
}

TaskCreateWithoutTagsInput _$TaskCreateWithoutTagsInputFromJson(
        Map<String, dynamic> json) =>
    TaskCreateWithoutTagsInput(
      uuid: json['uuid'] as String,
      title: json['title'] as String,
      status: json['status'] as bool,
      updateAt: BigInt.parse(json['updateAt'] as String),
      syncAt: BigInt.parse(json['syncAt'] as String),
      deleteAt: BigInt.parse(json['deleteAt'] as String),
      category: CategoryCreateNestedOneWithoutTasksInput.fromJson(
          json['category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TaskCreateWithoutTagsInputToJson(
        TaskCreateWithoutTagsInput instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'title': instance.title,
      'status': instance.status,
      'updateAt': instance.updateAt.toString(),
      'syncAt': instance.syncAt.toString(),
      'deleteAt': instance.deleteAt.toString(),
      'category': instance.category.toJson(),
    };

TaskUncheckedCreateWithoutTagsInput
    _$TaskUncheckedCreateWithoutTagsInputFromJson(Map<String, dynamic> json) =>
        TaskUncheckedCreateWithoutTagsInput(
          id: json['id'] as int?,
          uuid: json['uuid'] as String,
          title: json['title'] as String,
          status: json['status'] as bool,
          categoryId: json['categoryId'] as int,
          updateAt: BigInt.parse(json['updateAt'] as String),
          syncAt: BigInt.parse(json['syncAt'] as String),
          deleteAt: BigInt.parse(json['deleteAt'] as String),
        );

Map<String, dynamic> _$TaskUncheckedCreateWithoutTagsInputToJson(
    TaskUncheckedCreateWithoutTagsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['uuid'] = instance.uuid;
  val['title'] = instance.title;
  val['status'] = instance.status;
  val['categoryId'] = instance.categoryId;
  val['updateAt'] = instance.updateAt.toString();
  val['syncAt'] = instance.syncAt.toString();
  val['deleteAt'] = instance.deleteAt.toString();
  return val;
}

TaskCreateOrConnectWithoutTagsInput
    _$TaskCreateOrConnectWithoutTagsInputFromJson(Map<String, dynamic> json) =>
        TaskCreateOrConnectWithoutTagsInput(
          where: TaskWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          create: TaskCreateWithoutTagsInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$TaskCreateOrConnectWithoutTagsInputToJson(
        TaskCreateOrConnectWithoutTagsInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'create': instance.create.toJson(),
    };

TaskUpsertWithWhereUniqueWithoutTagsInput
    _$TaskUpsertWithWhereUniqueWithoutTagsInputFromJson(
            Map<String, dynamic> json) =>
        TaskUpsertWithWhereUniqueWithoutTagsInput(
          where: TaskWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          update: TaskUpdateWithoutTagsInput.fromJson(
              json['update'] as Map<String, dynamic>),
          create: TaskCreateWithoutTagsInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$TaskUpsertWithWhereUniqueWithoutTagsInputToJson(
        TaskUpsertWithWhereUniqueWithoutTagsInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'update': instance.update.toJson(),
      'create': instance.create.toJson(),
    };

TaskUpdateWithWhereUniqueWithoutTagsInput
    _$TaskUpdateWithWhereUniqueWithoutTagsInputFromJson(
            Map<String, dynamic> json) =>
        TaskUpdateWithWhereUniqueWithoutTagsInput(
          where: TaskWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          data: TaskUpdateWithoutTagsInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$TaskUpdateWithWhereUniqueWithoutTagsInputToJson(
        TaskUpdateWithWhereUniqueWithoutTagsInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'data': instance.data.toJson(),
    };

TaskUpdateManyWithWhereWithoutTagsInput
    _$TaskUpdateManyWithWhereWithoutTagsInputFromJson(
            Map<String, dynamic> json) =>
        TaskUpdateManyWithWhereWithoutTagsInput(
          where: TaskScalarWhereInput.fromJson(
              json['where'] as Map<String, dynamic>),
          data: TaskUpdateManyMutationInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$TaskUpdateManyWithWhereWithoutTagsInputToJson(
        TaskUpdateManyWithWhereWithoutTagsInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'data': instance.data.toJson(),
    };

TaskScalarWhereInput _$TaskScalarWhereInputFromJson(
        Map<String, dynamic> json) =>
    TaskScalarWhereInput(
      AND: (json['AND'] as List<dynamic>?)?.map(
          (e) => TaskScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)?.map(
          (e) => TaskScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)?.map(
          (e) => TaskScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      id: json['id'] == null
          ? null
          : IntFilter.fromJson(json['id'] as Map<String, dynamic>),
      uuid: json['uuid'] == null
          ? null
          : StringFilter.fromJson(json['uuid'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : StringFilter.fromJson(json['title'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : BoolFilter.fromJson(json['status'] as Map<String, dynamic>),
      categoryId: json['categoryId'] == null
          ? null
          : IntFilter.fromJson(json['categoryId'] as Map<String, dynamic>),
      updateAt: json['updateAt'] == null
          ? null
          : BigIntFilter.fromJson(json['updateAt'] as Map<String, dynamic>),
      syncAt: json['syncAt'] == null
          ? null
          : BigIntFilter.fromJson(json['syncAt'] as Map<String, dynamic>),
      deleteAt: json['deleteAt'] == null
          ? null
          : BigIntFilter.fromJson(json['deleteAt'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TaskScalarWhereInputToJson(
    TaskScalarWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('uuid', instance.uuid?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('status', instance.status?.toJson());
  writeNotNull('categoryId', instance.categoryId?.toJson());
  writeNotNull('updateAt', instance.updateAt?.toJson());
  writeNotNull('syncAt', instance.syncAt?.toJson());
  writeNotNull('deleteAt', instance.deleteAt?.toJson());
  return val;
}

TaskCreateWithoutCategoryInput _$TaskCreateWithoutCategoryInputFromJson(
        Map<String, dynamic> json) =>
    TaskCreateWithoutCategoryInput(
      uuid: json['uuid'] as String,
      title: json['title'] as String,
      status: json['status'] as bool,
      updateAt: BigInt.parse(json['updateAt'] as String),
      syncAt: BigInt.parse(json['syncAt'] as String),
      deleteAt: BigInt.parse(json['deleteAt'] as String),
      tags: json['tags'] == null
          ? null
          : TagCreateNestedManyWithoutTasksInput.fromJson(
              json['tags'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TaskCreateWithoutCategoryInputToJson(
    TaskCreateWithoutCategoryInput instance) {
  final val = <String, dynamic>{
    'uuid': instance.uuid,
    'title': instance.title,
    'status': instance.status,
    'updateAt': instance.updateAt.toString(),
    'syncAt': instance.syncAt.toString(),
    'deleteAt': instance.deleteAt.toString(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tags', instance.tags?.toJson());
  return val;
}

TaskUncheckedCreateWithoutCategoryInput
    _$TaskUncheckedCreateWithoutCategoryInputFromJson(
            Map<String, dynamic> json) =>
        TaskUncheckedCreateWithoutCategoryInput(
          id: json['id'] as int?,
          uuid: json['uuid'] as String,
          title: json['title'] as String,
          status: json['status'] as bool,
          updateAt: BigInt.parse(json['updateAt'] as String),
          syncAt: BigInt.parse(json['syncAt'] as String),
          deleteAt: BigInt.parse(json['deleteAt'] as String),
          tags: json['tags'] == null
              ? null
              : TagUncheckedCreateNestedManyWithoutTasksInput.fromJson(
                  json['tags'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$TaskUncheckedCreateWithoutCategoryInputToJson(
    TaskUncheckedCreateWithoutCategoryInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['uuid'] = instance.uuid;
  val['title'] = instance.title;
  val['status'] = instance.status;
  val['updateAt'] = instance.updateAt.toString();
  val['syncAt'] = instance.syncAt.toString();
  val['deleteAt'] = instance.deleteAt.toString();
  writeNotNull('tags', instance.tags?.toJson());
  return val;
}

TaskCreateOrConnectWithoutCategoryInput
    _$TaskCreateOrConnectWithoutCategoryInputFromJson(
            Map<String, dynamic> json) =>
        TaskCreateOrConnectWithoutCategoryInput(
          where: TaskWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          create: TaskCreateWithoutCategoryInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$TaskCreateOrConnectWithoutCategoryInputToJson(
        TaskCreateOrConnectWithoutCategoryInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'create': instance.create.toJson(),
    };

TaskCreateManyCategoryInputEnvelope
    _$TaskCreateManyCategoryInputEnvelopeFromJson(Map<String, dynamic> json) =>
        TaskCreateManyCategoryInputEnvelope(
          data: (json['data'] as List<dynamic>).map((e) =>
              TaskCreateManyCategoryInput.fromJson(e as Map<String, dynamic>)),
          skipDuplicates: json['skipDuplicates'] as bool?,
        );

Map<String, dynamic> _$TaskCreateManyCategoryInputEnvelopeToJson(
    TaskCreateManyCategoryInputEnvelope instance) {
  final val = <String, dynamic>{
    'data': instance.data.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('skipDuplicates', instance.skipDuplicates);
  return val;
}

TaskUpsertWithWhereUniqueWithoutCategoryInput
    _$TaskUpsertWithWhereUniqueWithoutCategoryInputFromJson(
            Map<String, dynamic> json) =>
        TaskUpsertWithWhereUniqueWithoutCategoryInput(
          where: TaskWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          update: TaskUpdateWithoutCategoryInput.fromJson(
              json['update'] as Map<String, dynamic>),
          create: TaskCreateWithoutCategoryInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$TaskUpsertWithWhereUniqueWithoutCategoryInputToJson(
        TaskUpsertWithWhereUniqueWithoutCategoryInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'update': instance.update.toJson(),
      'create': instance.create.toJson(),
    };

TaskUpdateWithWhereUniqueWithoutCategoryInput
    _$TaskUpdateWithWhereUniqueWithoutCategoryInputFromJson(
            Map<String, dynamic> json) =>
        TaskUpdateWithWhereUniqueWithoutCategoryInput(
          where: TaskWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          data: TaskUpdateWithoutCategoryInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$TaskUpdateWithWhereUniqueWithoutCategoryInputToJson(
        TaskUpdateWithWhereUniqueWithoutCategoryInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'data': instance.data.toJson(),
    };

TaskUpdateManyWithWhereWithoutCategoryInput
    _$TaskUpdateManyWithWhereWithoutCategoryInputFromJson(
            Map<String, dynamic> json) =>
        TaskUpdateManyWithWhereWithoutCategoryInput(
          where: TaskScalarWhereInput.fromJson(
              json['where'] as Map<String, dynamic>),
          data: TaskUpdateManyMutationInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$TaskUpdateManyWithWhereWithoutCategoryInputToJson(
        TaskUpdateManyWithWhereWithoutCategoryInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'data': instance.data.toJson(),
    };

TagUpdateWithoutTasksInput _$TagUpdateWithoutTasksInputFromJson(
        Map<String, dynamic> json) =>
    TagUpdateWithoutTasksInput(
      name: json['name'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['name'] as Map<String, dynamic>),
      color: json['color'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['color'] as Map<String, dynamic>),
      updateAt: json['updateAt'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['updateAt'] as Map<String, dynamic>),
      syncAt: json['syncAt'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['syncAt'] as Map<String, dynamic>),
      deleteAt: json['deleteAt'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['deleteAt'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TagUpdateWithoutTasksInputToJson(
    TagUpdateWithoutTasksInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name?.toJson());
  writeNotNull('color', instance.color?.toJson());
  writeNotNull('updateAt', instance.updateAt?.toJson());
  writeNotNull('syncAt', instance.syncAt?.toJson());
  writeNotNull('deleteAt', instance.deleteAt?.toJson());
  return val;
}

TagUncheckedUpdateWithoutTasksInput
    _$TagUncheckedUpdateWithoutTasksInputFromJson(Map<String, dynamic> json) =>
        TagUncheckedUpdateWithoutTasksInput(
          id: json['id'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          name: json['name'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['name'] as Map<String, dynamic>),
          color: json['color'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['color'] as Map<String, dynamic>),
          updateAt: json['updateAt'] == null
              ? null
              : BigIntFieldUpdateOperationsInput.fromJson(
                  json['updateAt'] as Map<String, dynamic>),
          syncAt: json['syncAt'] == null
              ? null
              : BigIntFieldUpdateOperationsInput.fromJson(
                  json['syncAt'] as Map<String, dynamic>),
          deleteAt: json['deleteAt'] == null
              ? null
              : BigIntFieldUpdateOperationsInput.fromJson(
                  json['deleteAt'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$TagUncheckedUpdateWithoutTasksInputToJson(
    TagUncheckedUpdateWithoutTasksInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('color', instance.color?.toJson());
  writeNotNull('updateAt', instance.updateAt?.toJson());
  writeNotNull('syncAt', instance.syncAt?.toJson());
  writeNotNull('deleteAt', instance.deleteAt?.toJson());
  return val;
}

TagUncheckedUpdateManyWithoutTagsInput
    _$TagUncheckedUpdateManyWithoutTagsInputFromJson(
            Map<String, dynamic> json) =>
        TagUncheckedUpdateManyWithoutTagsInput(
          id: json['id'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          name: json['name'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['name'] as Map<String, dynamic>),
          color: json['color'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['color'] as Map<String, dynamic>),
          updateAt: json['updateAt'] == null
              ? null
              : BigIntFieldUpdateOperationsInput.fromJson(
                  json['updateAt'] as Map<String, dynamic>),
          syncAt: json['syncAt'] == null
              ? null
              : BigIntFieldUpdateOperationsInput.fromJson(
                  json['syncAt'] as Map<String, dynamic>),
          deleteAt: json['deleteAt'] == null
              ? null
              : BigIntFieldUpdateOperationsInput.fromJson(
                  json['deleteAt'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$TagUncheckedUpdateManyWithoutTagsInputToJson(
    TagUncheckedUpdateManyWithoutTagsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('color', instance.color?.toJson());
  writeNotNull('updateAt', instance.updateAt?.toJson());
  writeNotNull('syncAt', instance.syncAt?.toJson());
  writeNotNull('deleteAt', instance.deleteAt?.toJson());
  return val;
}

TaskUpdateWithoutTagsInput _$TaskUpdateWithoutTagsInputFromJson(
        Map<String, dynamic> json) =>
    TaskUpdateWithoutTagsInput(
      uuid: json['uuid'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['uuid'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['title'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : BoolFieldUpdateOperationsInput.fromJson(
              json['status'] as Map<String, dynamic>),
      updateAt: json['updateAt'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['updateAt'] as Map<String, dynamic>),
      syncAt: json['syncAt'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['syncAt'] as Map<String, dynamic>),
      deleteAt: json['deleteAt'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['deleteAt'] as Map<String, dynamic>),
      category: json['category'] == null
          ? null
          : CategoryUpdateOneRequiredWithoutTasksNestedInput.fromJson(
              json['category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TaskUpdateWithoutTagsInputToJson(
    TaskUpdateWithoutTagsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('uuid', instance.uuid?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('status', instance.status?.toJson());
  writeNotNull('updateAt', instance.updateAt?.toJson());
  writeNotNull('syncAt', instance.syncAt?.toJson());
  writeNotNull('deleteAt', instance.deleteAt?.toJson());
  writeNotNull('category', instance.category?.toJson());
  return val;
}

TaskUncheckedUpdateWithoutTagsInput
    _$TaskUncheckedUpdateWithoutTagsInputFromJson(Map<String, dynamic> json) =>
        TaskUncheckedUpdateWithoutTagsInput(
          id: json['id'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          uuid: json['uuid'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['uuid'] as Map<String, dynamic>),
          title: json['title'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['title'] as Map<String, dynamic>),
          status: json['status'] == null
              ? null
              : BoolFieldUpdateOperationsInput.fromJson(
                  json['status'] as Map<String, dynamic>),
          categoryId: json['categoryId'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['categoryId'] as Map<String, dynamic>),
          updateAt: json['updateAt'] == null
              ? null
              : BigIntFieldUpdateOperationsInput.fromJson(
                  json['updateAt'] as Map<String, dynamic>),
          syncAt: json['syncAt'] == null
              ? null
              : BigIntFieldUpdateOperationsInput.fromJson(
                  json['syncAt'] as Map<String, dynamic>),
          deleteAt: json['deleteAt'] == null
              ? null
              : BigIntFieldUpdateOperationsInput.fromJson(
                  json['deleteAt'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$TaskUncheckedUpdateWithoutTagsInputToJson(
    TaskUncheckedUpdateWithoutTagsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('uuid', instance.uuid?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('status', instance.status?.toJson());
  writeNotNull('categoryId', instance.categoryId?.toJson());
  writeNotNull('updateAt', instance.updateAt?.toJson());
  writeNotNull('syncAt', instance.syncAt?.toJson());
  writeNotNull('deleteAt', instance.deleteAt?.toJson());
  return val;
}

TaskUncheckedUpdateManyWithoutTasksInput
    _$TaskUncheckedUpdateManyWithoutTasksInputFromJson(
            Map<String, dynamic> json) =>
        TaskUncheckedUpdateManyWithoutTasksInput(
          id: json['id'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          uuid: json['uuid'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['uuid'] as Map<String, dynamic>),
          title: json['title'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['title'] as Map<String, dynamic>),
          status: json['status'] == null
              ? null
              : BoolFieldUpdateOperationsInput.fromJson(
                  json['status'] as Map<String, dynamic>),
          categoryId: json['categoryId'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['categoryId'] as Map<String, dynamic>),
          updateAt: json['updateAt'] == null
              ? null
              : BigIntFieldUpdateOperationsInput.fromJson(
                  json['updateAt'] as Map<String, dynamic>),
          syncAt: json['syncAt'] == null
              ? null
              : BigIntFieldUpdateOperationsInput.fromJson(
                  json['syncAt'] as Map<String, dynamic>),
          deleteAt: json['deleteAt'] == null
              ? null
              : BigIntFieldUpdateOperationsInput.fromJson(
                  json['deleteAt'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$TaskUncheckedUpdateManyWithoutTasksInputToJson(
    TaskUncheckedUpdateManyWithoutTasksInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('uuid', instance.uuid?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('status', instance.status?.toJson());
  writeNotNull('categoryId', instance.categoryId?.toJson());
  writeNotNull('updateAt', instance.updateAt?.toJson());
  writeNotNull('syncAt', instance.syncAt?.toJson());
  writeNotNull('deleteAt', instance.deleteAt?.toJson());
  return val;
}

TaskCreateManyCategoryInput _$TaskCreateManyCategoryInputFromJson(
        Map<String, dynamic> json) =>
    TaskCreateManyCategoryInput(
      id: json['id'] as int?,
      uuid: json['uuid'] as String,
      title: json['title'] as String,
      status: json['status'] as bool,
      updateAt: BigInt.parse(json['updateAt'] as String),
      syncAt: BigInt.parse(json['syncAt'] as String),
      deleteAt: BigInt.parse(json['deleteAt'] as String),
    );

Map<String, dynamic> _$TaskCreateManyCategoryInputToJson(
    TaskCreateManyCategoryInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['uuid'] = instance.uuid;
  val['title'] = instance.title;
  val['status'] = instance.status;
  val['updateAt'] = instance.updateAt.toString();
  val['syncAt'] = instance.syncAt.toString();
  val['deleteAt'] = instance.deleteAt.toString();
  return val;
}

TaskUpdateWithoutCategoryInput _$TaskUpdateWithoutCategoryInputFromJson(
        Map<String, dynamic> json) =>
    TaskUpdateWithoutCategoryInput(
      uuid: json['uuid'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['uuid'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['title'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : BoolFieldUpdateOperationsInput.fromJson(
              json['status'] as Map<String, dynamic>),
      updateAt: json['updateAt'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['updateAt'] as Map<String, dynamic>),
      syncAt: json['syncAt'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['syncAt'] as Map<String, dynamic>),
      deleteAt: json['deleteAt'] == null
          ? null
          : BigIntFieldUpdateOperationsInput.fromJson(
              json['deleteAt'] as Map<String, dynamic>),
      tags: json['tags'] == null
          ? null
          : TagUpdateManyWithoutTasksNestedInput.fromJson(
              json['tags'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TaskUpdateWithoutCategoryInputToJson(
    TaskUpdateWithoutCategoryInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('uuid', instance.uuid?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('status', instance.status?.toJson());
  writeNotNull('updateAt', instance.updateAt?.toJson());
  writeNotNull('syncAt', instance.syncAt?.toJson());
  writeNotNull('deleteAt', instance.deleteAt?.toJson());
  writeNotNull('tags', instance.tags?.toJson());
  return val;
}

TaskUncheckedUpdateWithoutCategoryInput
    _$TaskUncheckedUpdateWithoutCategoryInputFromJson(
            Map<String, dynamic> json) =>
        TaskUncheckedUpdateWithoutCategoryInput(
          id: json['id'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          uuid: json['uuid'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['uuid'] as Map<String, dynamic>),
          title: json['title'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['title'] as Map<String, dynamic>),
          status: json['status'] == null
              ? null
              : BoolFieldUpdateOperationsInput.fromJson(
                  json['status'] as Map<String, dynamic>),
          updateAt: json['updateAt'] == null
              ? null
              : BigIntFieldUpdateOperationsInput.fromJson(
                  json['updateAt'] as Map<String, dynamic>),
          syncAt: json['syncAt'] == null
              ? null
              : BigIntFieldUpdateOperationsInput.fromJson(
                  json['syncAt'] as Map<String, dynamic>),
          deleteAt: json['deleteAt'] == null
              ? null
              : BigIntFieldUpdateOperationsInput.fromJson(
                  json['deleteAt'] as Map<String, dynamic>),
          tags: json['tags'] == null
              ? null
              : TagUncheckedUpdateManyWithoutTasksNestedInput.fromJson(
                  json['tags'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$TaskUncheckedUpdateWithoutCategoryInputToJson(
    TaskUncheckedUpdateWithoutCategoryInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('uuid', instance.uuid?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('status', instance.status?.toJson());
  writeNotNull('updateAt', instance.updateAt?.toJson());
  writeNotNull('syncAt', instance.syncAt?.toJson());
  writeNotNull('deleteAt', instance.deleteAt?.toJson());
  writeNotNull('tags', instance.tags?.toJson());
  return val;
}

Task _$TaskFromJson(Map<String, dynamic> json) => Task(
      id: json['id'] as int,
      uuid: json['uuid'] as String,
      title: json['title'] as String,
      status: json['status'] as bool,
      categoryId: json['categoryId'] as int,
      updateAt: BigInt.parse(json['updateAt'] as String),
      syncAt: BigInt.parse(json['syncAt'] as String),
      deleteAt: BigInt.parse(json['deleteAt'] as String),
    );

Map<String, dynamic> _$TaskToJson(Task instance) => <String, dynamic>{
      'id': instance.id,
      'uuid': instance.uuid,
      'title': instance.title,
      'status': instance.status,
      'categoryId': instance.categoryId,
      'updateAt': instance.updateAt.toString(),
      'syncAt': instance.syncAt.toString(),
      'deleteAt': instance.deleteAt.toString(),
    };

Tag _$TagFromJson(Map<String, dynamic> json) => Tag(
      id: json['id'] as int,
      name: json['name'] as String,
      color: json['color'] as int,
      updateAt: BigInt.parse(json['updateAt'] as String),
      syncAt: BigInt.parse(json['syncAt'] as String),
      deleteAt: BigInt.parse(json['deleteAt'] as String),
    );

Map<String, dynamic> _$TagToJson(Tag instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'color': instance.color,
      'updateAt': instance.updateAt.toString(),
      'syncAt': instance.syncAt.toString(),
      'deleteAt': instance.deleteAt.toString(),
    };

Category _$CategoryFromJson(Map<String, dynamic> json) => Category(
      id: json['id'] as int,
      name: json['name'] as String,
      color: json['color'] as int,
      updateAt: BigInt.parse(json['updateAt'] as String),
      syncAt: BigInt.parse(json['syncAt'] as String),
      deleteAt: BigInt.parse(json['deleteAt'] as String),
    );

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'color': instance.color,
      'updateAt': instance.updateAt.toString(),
      'syncAt': instance.syncAt.toString(),
      'deleteAt': instance.deleteAt.toString(),
    };

TaskGroupByOutputType _$TaskGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    TaskGroupByOutputType(
      id: json['id'] as int?,
      uuid: json['uuid'] as String?,
      title: json['title'] as String?,
      status: json['status'] as bool?,
      categoryId: json['categoryId'] as int?,
      updateAt: json['updateAt'] == null
          ? null
          : BigInt.parse(json['updateAt'] as String),
      syncAt: json['syncAt'] == null
          ? null
          : BigInt.parse(json['syncAt'] as String),
      deleteAt: json['deleteAt'] == null
          ? null
          : BigInt.parse(json['deleteAt'] as String),
    );

Map<String, dynamic> _$TaskGroupByOutputTypeToJson(
    TaskGroupByOutputType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('uuid', instance.uuid);
  writeNotNull('title', instance.title);
  writeNotNull('status', instance.status);
  writeNotNull('categoryId', instance.categoryId);
  writeNotNull('updateAt', instance.updateAt?.toString());
  writeNotNull('syncAt', instance.syncAt?.toString());
  writeNotNull('deleteAt', instance.deleteAt?.toString());
  return val;
}

TagGroupByOutputType _$TagGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    TagGroupByOutputType(
      id: json['id'] as int?,
      name: json['name'] as String?,
      color: json['color'] as int?,
      updateAt: json['updateAt'] == null
          ? null
          : BigInt.parse(json['updateAt'] as String),
      syncAt: json['syncAt'] == null
          ? null
          : BigInt.parse(json['syncAt'] as String),
      deleteAt: json['deleteAt'] == null
          ? null
          : BigInt.parse(json['deleteAt'] as String),
    );

Map<String, dynamic> _$TagGroupByOutputTypeToJson(
    TagGroupByOutputType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('color', instance.color);
  writeNotNull('updateAt', instance.updateAt?.toString());
  writeNotNull('syncAt', instance.syncAt?.toString());
  writeNotNull('deleteAt', instance.deleteAt?.toString());
  return val;
}

CategoryGroupByOutputType _$CategoryGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    CategoryGroupByOutputType(
      id: json['id'] as int?,
      name: json['name'] as String?,
      color: json['color'] as int?,
      updateAt: json['updateAt'] == null
          ? null
          : BigInt.parse(json['updateAt'] as String),
      syncAt: json['syncAt'] == null
          ? null
          : BigInt.parse(json['syncAt'] as String),
      deleteAt: json['deleteAt'] == null
          ? null
          : BigInt.parse(json['deleteAt'] as String),
    );

Map<String, dynamic> _$CategoryGroupByOutputTypeToJson(
    CategoryGroupByOutputType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('color', instance.color);
  writeNotNull('updateAt', instance.updateAt?.toString());
  writeNotNull('syncAt', instance.syncAt?.toString());
  writeNotNull('deleteAt', instance.deleteAt?.toString());
  return val;
}

AffectedRowsOutput _$AffectedRowsOutputFromJson(Map<String, dynamic> json) =>
    AffectedRowsOutput(
      count: json['count'] as int?,
    );

Map<String, dynamic> _$AffectedRowsOutputToJson(AffectedRowsOutput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  return val;
}

Map<String, dynamic> _$DatasourcesToJson(Datasources instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('db', instance.db);
  return val;
}
