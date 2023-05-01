// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:json_annotation/json_annotation.dart';
import 'package:orm/binary_engine.dart' as _i5;
import 'package:orm/engine_core.dart' as _i3;
import 'package:orm/graphql.dart' as _i2;
import 'package:orm/logger.dart' as _i4;
import 'package:orm/orm.dart' as _i1;
import 'package:orm/orm.dart' show DateTimeJsonConverter;

part 'prisma_client.g.dart';

enum CategoryScalarFieldEnum implements _i1.PrismaEnum {
  id,
  name,
  color,
  updateAt,
  syncAt,
  deleteAt;

  @override
  String? get originalName => null;
}

enum QueryMode implements _i1.PrismaEnum {
  @JsonValue('default')
  $default(r'default'),
  insensitive;

  const QueryMode([this.originalName]);

  @override
  final String? originalName;
}

enum SortOrder implements _i1.PrismaEnum {
  asc,
  desc;

  @override
  String? get originalName => null;
}

enum TagScalarFieldEnum implements _i1.PrismaEnum {
  id,
  name,
  color,
  updateAt,
  syncAt,
  deleteAt;

  @override
  String? get originalName => null;
}

enum TaskScalarFieldEnum implements _i1.PrismaEnum {
  id,
  uuid,
  title,
  status,
  categoryId,
  updateAt,
  syncAt,
  deleteAt;

  @override
  String? get originalName => null;
}

@_i1.jsonSerializable
class TaskWhereInput implements _i1.JsonSerializable {
  const TaskWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.uuid,
    this.title,
    this.status,
    this.categoryId,
    this.updateAt,
    this.syncAt,
    this.deleteAt,
    this.tags,
    this.category,
  });

  factory TaskWhereInput.fromJson(Map<String, dynamic> json) =>
      _$TaskWhereInputFromJson(json);

  final Iterable<TaskWhereInput>? AND;

  final Iterable<TaskWhereInput>? OR;

  final Iterable<TaskWhereInput>? NOT;

  final IntFilter? id;

  final StringFilter? uuid;

  final StringFilter? title;

  final BoolFilter? status;

  final IntFilter? categoryId;

  final BigIntFilter? updateAt;

  final BigIntFilter? syncAt;

  final BigIntFilter? deleteAt;

  final TagListRelationFilter? tags;

  final CategoryRelationFilter? category;

  @override
  Map<String, dynamic> toJson() => _$TaskWhereInputToJson(this);
}

@_i1.jsonSerializable
class TaskOrderByWithRelationInput implements _i1.JsonSerializable {
  const TaskOrderByWithRelationInput({
    this.id,
    this.uuid,
    this.title,
    this.status,
    this.categoryId,
    this.updateAt,
    this.syncAt,
    this.deleteAt,
    this.tags,
    this.category,
  });

  factory TaskOrderByWithRelationInput.fromJson(Map<String, dynamic> json) =>
      _$TaskOrderByWithRelationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? uuid;

  final SortOrder? title;

  final SortOrder? status;

  final SortOrder? categoryId;

  final SortOrder? updateAt;

  final SortOrder? syncAt;

  final SortOrder? deleteAt;

  final TagOrderByRelationAggregateInput? tags;

  final CategoryOrderByWithRelationInput? category;

  @override
  Map<String, dynamic> toJson() => _$TaskOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class TaskWhereUniqueInput implements _i1.JsonSerializable {
  const TaskWhereUniqueInput({
    this.id,
    this.uuid,
  });

  factory TaskWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$TaskWhereUniqueInputFromJson(json);

  final int? id;

  final String? uuid;

  @override
  Map<String, dynamic> toJson() => _$TaskWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class TaskOrderByWithAggregationInput implements _i1.JsonSerializable {
  const TaskOrderByWithAggregationInput({
    this.id,
    this.uuid,
    this.title,
    this.status,
    this.categoryId,
    this.updateAt,
    this.syncAt,
    this.deleteAt,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  factory TaskOrderByWithAggregationInput.fromJson(Map<String, dynamic> json) =>
      _$TaskOrderByWithAggregationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? uuid;

  final SortOrder? title;

  final SortOrder? status;

  final SortOrder? categoryId;

  final SortOrder? updateAt;

  final SortOrder? syncAt;

  final SortOrder? deleteAt;

  @JsonKey(name: r'_count')
  final TaskCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_avg')
  final TaskAvgOrderByAggregateInput? $avg;

  @JsonKey(name: r'_max')
  final TaskMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final TaskMinOrderByAggregateInput? $min;

  @JsonKey(name: r'_sum')
  final TaskSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() =>
      _$TaskOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class TaskScalarWhereWithAggregatesInput implements _i1.JsonSerializable {
  const TaskScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.uuid,
    this.title,
    this.status,
    this.categoryId,
    this.updateAt,
    this.syncAt,
    this.deleteAt,
  });

  factory TaskScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$TaskScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<TaskScalarWhereWithAggregatesInput>? AND;

  final Iterable<TaskScalarWhereWithAggregatesInput>? OR;

  final Iterable<TaskScalarWhereWithAggregatesInput>? NOT;

  final IntWithAggregatesFilter? id;

  final StringWithAggregatesFilter? uuid;

  final StringWithAggregatesFilter? title;

  final BoolWithAggregatesFilter? status;

  final IntWithAggregatesFilter? categoryId;

  final BigIntWithAggregatesFilter? updateAt;

  final BigIntWithAggregatesFilter? syncAt;

  final BigIntWithAggregatesFilter? deleteAt;

  @override
  Map<String, dynamic> toJson() =>
      _$TaskScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class TagWhereInput implements _i1.JsonSerializable {
  const TagWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.name,
    this.color,
    this.updateAt,
    this.syncAt,
    this.deleteAt,
    this.tasks,
  });

  factory TagWhereInput.fromJson(Map<String, dynamic> json) =>
      _$TagWhereInputFromJson(json);

  final Iterable<TagWhereInput>? AND;

  final Iterable<TagWhereInput>? OR;

  final Iterable<TagWhereInput>? NOT;

  final IntFilter? id;

  final StringFilter? name;

  final IntFilter? color;

  final BigIntFilter? updateAt;

  final BigIntFilter? syncAt;

  final BigIntFilter? deleteAt;

  final TaskListRelationFilter? tasks;

  @override
  Map<String, dynamic> toJson() => _$TagWhereInputToJson(this);
}

@_i1.jsonSerializable
class TagOrderByWithRelationInput implements _i1.JsonSerializable {
  const TagOrderByWithRelationInput({
    this.id,
    this.name,
    this.color,
    this.updateAt,
    this.syncAt,
    this.deleteAt,
    this.tasks,
  });

  factory TagOrderByWithRelationInput.fromJson(Map<String, dynamic> json) =>
      _$TagOrderByWithRelationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? name;

  final SortOrder? color;

  final SortOrder? updateAt;

  final SortOrder? syncAt;

  final SortOrder? deleteAt;

  final TaskOrderByRelationAggregateInput? tasks;

  @override
  Map<String, dynamic> toJson() => _$TagOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class TagWhereUniqueInput implements _i1.JsonSerializable {
  const TagWhereUniqueInput({
    this.id,
    this.name,
  });

  factory TagWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$TagWhereUniqueInputFromJson(json);

  final int? id;

  final String? name;

  @override
  Map<String, dynamic> toJson() => _$TagWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class TagOrderByWithAggregationInput implements _i1.JsonSerializable {
  const TagOrderByWithAggregationInput({
    this.id,
    this.name,
    this.color,
    this.updateAt,
    this.syncAt,
    this.deleteAt,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  factory TagOrderByWithAggregationInput.fromJson(Map<String, dynamic> json) =>
      _$TagOrderByWithAggregationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? name;

  final SortOrder? color;

  final SortOrder? updateAt;

  final SortOrder? syncAt;

  final SortOrder? deleteAt;

  @JsonKey(name: r'_count')
  final TagCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_avg')
  final TagAvgOrderByAggregateInput? $avg;

  @JsonKey(name: r'_max')
  final TagMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final TagMinOrderByAggregateInput? $min;

  @JsonKey(name: r'_sum')
  final TagSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() => _$TagOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class TagScalarWhereWithAggregatesInput implements _i1.JsonSerializable {
  const TagScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.name,
    this.color,
    this.updateAt,
    this.syncAt,
    this.deleteAt,
  });

  factory TagScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$TagScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<TagScalarWhereWithAggregatesInput>? AND;

  final Iterable<TagScalarWhereWithAggregatesInput>? OR;

  final Iterable<TagScalarWhereWithAggregatesInput>? NOT;

  final IntWithAggregatesFilter? id;

  final StringWithAggregatesFilter? name;

  final IntWithAggregatesFilter? color;

  final BigIntWithAggregatesFilter? updateAt;

  final BigIntWithAggregatesFilter? syncAt;

  final BigIntWithAggregatesFilter? deleteAt;

  @override
  Map<String, dynamic> toJson() =>
      _$TagScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class CategoryWhereInput implements _i1.JsonSerializable {
  const CategoryWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.name,
    this.color,
    this.updateAt,
    this.syncAt,
    this.deleteAt,
    this.tasks,
  });

  factory CategoryWhereInput.fromJson(Map<String, dynamic> json) =>
      _$CategoryWhereInputFromJson(json);

  final Iterable<CategoryWhereInput>? AND;

  final Iterable<CategoryWhereInput>? OR;

  final Iterable<CategoryWhereInput>? NOT;

  final IntFilter? id;

  final StringFilter? name;

  final IntFilter? color;

  final BigIntFilter? updateAt;

  final BigIntFilter? syncAt;

  final BigIntFilter? deleteAt;

  final TaskListRelationFilter? tasks;

  @override
  Map<String, dynamic> toJson() => _$CategoryWhereInputToJson(this);
}

@_i1.jsonSerializable
class CategoryOrderByWithRelationInput implements _i1.JsonSerializable {
  const CategoryOrderByWithRelationInput({
    this.id,
    this.name,
    this.color,
    this.updateAt,
    this.syncAt,
    this.deleteAt,
    this.tasks,
  });

  factory CategoryOrderByWithRelationInput.fromJson(
          Map<String, dynamic> json) =>
      _$CategoryOrderByWithRelationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? name;

  final SortOrder? color;

  final SortOrder? updateAt;

  final SortOrder? syncAt;

  final SortOrder? deleteAt;

  final TaskOrderByRelationAggregateInput? tasks;

  @override
  Map<String, dynamic> toJson() =>
      _$CategoryOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class CategoryWhereUniqueInput implements _i1.JsonSerializable {
  const CategoryWhereUniqueInput({
    this.id,
    this.name,
  });

  factory CategoryWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$CategoryWhereUniqueInputFromJson(json);

  final int? id;

  final String? name;

  @override
  Map<String, dynamic> toJson() => _$CategoryWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class CategoryOrderByWithAggregationInput implements _i1.JsonSerializable {
  const CategoryOrderByWithAggregationInput({
    this.id,
    this.name,
    this.color,
    this.updateAt,
    this.syncAt,
    this.deleteAt,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  factory CategoryOrderByWithAggregationInput.fromJson(
          Map<String, dynamic> json) =>
      _$CategoryOrderByWithAggregationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? name;

  final SortOrder? color;

  final SortOrder? updateAt;

  final SortOrder? syncAt;

  final SortOrder? deleteAt;

  @JsonKey(name: r'_count')
  final CategoryCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_avg')
  final CategoryAvgOrderByAggregateInput? $avg;

  @JsonKey(name: r'_max')
  final CategoryMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final CategoryMinOrderByAggregateInput? $min;

  @JsonKey(name: r'_sum')
  final CategorySumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() =>
      _$CategoryOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class CategoryScalarWhereWithAggregatesInput implements _i1.JsonSerializable {
  const CategoryScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.name,
    this.color,
    this.updateAt,
    this.syncAt,
    this.deleteAt,
  });

  factory CategoryScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$CategoryScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<CategoryScalarWhereWithAggregatesInput>? AND;

  final Iterable<CategoryScalarWhereWithAggregatesInput>? OR;

  final Iterable<CategoryScalarWhereWithAggregatesInput>? NOT;

  final IntWithAggregatesFilter? id;

  final StringWithAggregatesFilter? name;

  final IntWithAggregatesFilter? color;

  final BigIntWithAggregatesFilter? updateAt;

  final BigIntWithAggregatesFilter? syncAt;

  final BigIntWithAggregatesFilter? deleteAt;

  @override
  Map<String, dynamic> toJson() =>
      _$CategoryScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class TaskCreateInput implements _i1.JsonSerializable {
  const TaskCreateInput({
    required this.uuid,
    required this.title,
    required this.status,
    required this.updateAt,
    required this.syncAt,
    required this.deleteAt,
    this.tags,
    required this.category,
  });

  factory TaskCreateInput.fromJson(Map<String, dynamic> json) =>
      _$TaskCreateInputFromJson(json);

  final String uuid;

  final String title;

  final bool status;

  final BigInt updateAt;

  final BigInt syncAt;

  final BigInt deleteAt;

  final TagCreateNestedManyWithoutTasksInput? tags;

  final CategoryCreateNestedOneWithoutTasksInput category;

  @override
  Map<String, dynamic> toJson() => _$TaskCreateInputToJson(this);
}

@_i1.jsonSerializable
class TaskUncheckedCreateInput implements _i1.JsonSerializable {
  const TaskUncheckedCreateInput({
    this.id,
    required this.uuid,
    required this.title,
    required this.status,
    required this.categoryId,
    required this.updateAt,
    required this.syncAt,
    required this.deleteAt,
    this.tags,
  });

  factory TaskUncheckedCreateInput.fromJson(Map<String, dynamic> json) =>
      _$TaskUncheckedCreateInputFromJson(json);

  final int? id;

  final String uuid;

  final String title;

  final bool status;

  final int categoryId;

  final BigInt updateAt;

  final BigInt syncAt;

  final BigInt deleteAt;

  final TagUncheckedCreateNestedManyWithoutTasksInput? tags;

  @override
  Map<String, dynamic> toJson() => _$TaskUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class TaskUpdateInput implements _i1.JsonSerializable {
  const TaskUpdateInput({
    this.uuid,
    this.title,
    this.status,
    this.updateAt,
    this.syncAt,
    this.deleteAt,
    this.tags,
    this.category,
  });

  factory TaskUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$TaskUpdateInputFromJson(json);

  final StringFieldUpdateOperationsInput? uuid;

  final StringFieldUpdateOperationsInput? title;

  final BoolFieldUpdateOperationsInput? status;

  final BigIntFieldUpdateOperationsInput? updateAt;

  final BigIntFieldUpdateOperationsInput? syncAt;

  final BigIntFieldUpdateOperationsInput? deleteAt;

  final TagUpdateManyWithoutTasksNestedInput? tags;

  final CategoryUpdateOneRequiredWithoutTasksNestedInput? category;

  @override
  Map<String, dynamic> toJson() => _$TaskUpdateInputToJson(this);
}

@_i1.jsonSerializable
class TaskUncheckedUpdateInput implements _i1.JsonSerializable {
  const TaskUncheckedUpdateInput({
    this.id,
    this.uuid,
    this.title,
    this.status,
    this.categoryId,
    this.updateAt,
    this.syncAt,
    this.deleteAt,
    this.tags,
  });

  factory TaskUncheckedUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$TaskUncheckedUpdateInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? uuid;

  final StringFieldUpdateOperationsInput? title;

  final BoolFieldUpdateOperationsInput? status;

  final IntFieldUpdateOperationsInput? categoryId;

  final BigIntFieldUpdateOperationsInput? updateAt;

  final BigIntFieldUpdateOperationsInput? syncAt;

  final BigIntFieldUpdateOperationsInput? deleteAt;

  final TagUncheckedUpdateManyWithoutTasksNestedInput? tags;

  @override
  Map<String, dynamic> toJson() => _$TaskUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class TaskCreateManyInput implements _i1.JsonSerializable {
  const TaskCreateManyInput({
    this.id,
    required this.uuid,
    required this.title,
    required this.status,
    required this.categoryId,
    required this.updateAt,
    required this.syncAt,
    required this.deleteAt,
  });

  factory TaskCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$TaskCreateManyInputFromJson(json);

  final int? id;

  final String uuid;

  final String title;

  final bool status;

  final int categoryId;

  final BigInt updateAt;

  final BigInt syncAt;

  final BigInt deleteAt;

  @override
  Map<String, dynamic> toJson() => _$TaskCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class TaskUpdateManyMutationInput implements _i1.JsonSerializable {
  const TaskUpdateManyMutationInput({
    this.uuid,
    this.title,
    this.status,
    this.updateAt,
    this.syncAt,
    this.deleteAt,
  });

  factory TaskUpdateManyMutationInput.fromJson(Map<String, dynamic> json) =>
      _$TaskUpdateManyMutationInputFromJson(json);

  final StringFieldUpdateOperationsInput? uuid;

  final StringFieldUpdateOperationsInput? title;

  final BoolFieldUpdateOperationsInput? status;

  final BigIntFieldUpdateOperationsInput? updateAt;

  final BigIntFieldUpdateOperationsInput? syncAt;

  final BigIntFieldUpdateOperationsInput? deleteAt;

  @override
  Map<String, dynamic> toJson() => _$TaskUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class TaskUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const TaskUncheckedUpdateManyInput({
    this.id,
    this.uuid,
    this.title,
    this.status,
    this.categoryId,
    this.updateAt,
    this.syncAt,
    this.deleteAt,
  });

  factory TaskUncheckedUpdateManyInput.fromJson(Map<String, dynamic> json) =>
      _$TaskUncheckedUpdateManyInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? uuid;

  final StringFieldUpdateOperationsInput? title;

  final BoolFieldUpdateOperationsInput? status;

  final IntFieldUpdateOperationsInput? categoryId;

  final BigIntFieldUpdateOperationsInput? updateAt;

  final BigIntFieldUpdateOperationsInput? syncAt;

  final BigIntFieldUpdateOperationsInput? deleteAt;

  @override
  Map<String, dynamic> toJson() => _$TaskUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class TagCreateInput implements _i1.JsonSerializable {
  const TagCreateInput({
    required this.name,
    required this.color,
    required this.updateAt,
    required this.syncAt,
    required this.deleteAt,
    this.tasks,
  });

  factory TagCreateInput.fromJson(Map<String, dynamic> json) =>
      _$TagCreateInputFromJson(json);

  final String name;

  final int color;

  final BigInt updateAt;

  final BigInt syncAt;

  final BigInt deleteAt;

  final TaskCreateNestedManyWithoutTagsInput? tasks;

  @override
  Map<String, dynamic> toJson() => _$TagCreateInputToJson(this);
}

@_i1.jsonSerializable
class TagUncheckedCreateInput implements _i1.JsonSerializable {
  const TagUncheckedCreateInput({
    this.id,
    required this.name,
    required this.color,
    required this.updateAt,
    required this.syncAt,
    required this.deleteAt,
    this.tasks,
  });

  factory TagUncheckedCreateInput.fromJson(Map<String, dynamic> json) =>
      _$TagUncheckedCreateInputFromJson(json);

  final int? id;

  final String name;

  final int color;

  final BigInt updateAt;

  final BigInt syncAt;

  final BigInt deleteAt;

  final TaskUncheckedCreateNestedManyWithoutTagsInput? tasks;

  @override
  Map<String, dynamic> toJson() => _$TagUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class TagUpdateInput implements _i1.JsonSerializable {
  const TagUpdateInput({
    this.name,
    this.color,
    this.updateAt,
    this.syncAt,
    this.deleteAt,
    this.tasks,
  });

  factory TagUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$TagUpdateInputFromJson(json);

  final StringFieldUpdateOperationsInput? name;

  final IntFieldUpdateOperationsInput? color;

  final BigIntFieldUpdateOperationsInput? updateAt;

  final BigIntFieldUpdateOperationsInput? syncAt;

  final BigIntFieldUpdateOperationsInput? deleteAt;

  final TaskUpdateManyWithoutTagsNestedInput? tasks;

  @override
  Map<String, dynamic> toJson() => _$TagUpdateInputToJson(this);
}

@_i1.jsonSerializable
class TagUncheckedUpdateInput implements _i1.JsonSerializable {
  const TagUncheckedUpdateInput({
    this.id,
    this.name,
    this.color,
    this.updateAt,
    this.syncAt,
    this.deleteAt,
    this.tasks,
  });

  factory TagUncheckedUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$TagUncheckedUpdateInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? name;

  final IntFieldUpdateOperationsInput? color;

  final BigIntFieldUpdateOperationsInput? updateAt;

  final BigIntFieldUpdateOperationsInput? syncAt;

  final BigIntFieldUpdateOperationsInput? deleteAt;

  final TaskUncheckedUpdateManyWithoutTagsNestedInput? tasks;

  @override
  Map<String, dynamic> toJson() => _$TagUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class TagCreateManyInput implements _i1.JsonSerializable {
  const TagCreateManyInput({
    this.id,
    required this.name,
    required this.color,
    required this.updateAt,
    required this.syncAt,
    required this.deleteAt,
  });

  factory TagCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$TagCreateManyInputFromJson(json);

  final int? id;

  final String name;

  final int color;

  final BigInt updateAt;

  final BigInt syncAt;

  final BigInt deleteAt;

  @override
  Map<String, dynamic> toJson() => _$TagCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class TagUpdateManyMutationInput implements _i1.JsonSerializable {
  const TagUpdateManyMutationInput({
    this.name,
    this.color,
    this.updateAt,
    this.syncAt,
    this.deleteAt,
  });

  factory TagUpdateManyMutationInput.fromJson(Map<String, dynamic> json) =>
      _$TagUpdateManyMutationInputFromJson(json);

  final StringFieldUpdateOperationsInput? name;

  final IntFieldUpdateOperationsInput? color;

  final BigIntFieldUpdateOperationsInput? updateAt;

  final BigIntFieldUpdateOperationsInput? syncAt;

  final BigIntFieldUpdateOperationsInput? deleteAt;

  @override
  Map<String, dynamic> toJson() => _$TagUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class TagUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const TagUncheckedUpdateManyInput({
    this.id,
    this.name,
    this.color,
    this.updateAt,
    this.syncAt,
    this.deleteAt,
  });

  factory TagUncheckedUpdateManyInput.fromJson(Map<String, dynamic> json) =>
      _$TagUncheckedUpdateManyInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? name;

  final IntFieldUpdateOperationsInput? color;

  final BigIntFieldUpdateOperationsInput? updateAt;

  final BigIntFieldUpdateOperationsInput? syncAt;

  final BigIntFieldUpdateOperationsInput? deleteAt;

  @override
  Map<String, dynamic> toJson() => _$TagUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class CategoryCreateInput implements _i1.JsonSerializable {
  const CategoryCreateInput({
    required this.name,
    required this.color,
    required this.updateAt,
    required this.syncAt,
    required this.deleteAt,
    this.tasks,
  });

  factory CategoryCreateInput.fromJson(Map<String, dynamic> json) =>
      _$CategoryCreateInputFromJson(json);

  final String name;

  final int color;

  final BigInt updateAt;

  final BigInt syncAt;

  final BigInt deleteAt;

  final TaskCreateNestedManyWithoutCategoryInput? tasks;

  @override
  Map<String, dynamic> toJson() => _$CategoryCreateInputToJson(this);
}

@_i1.jsonSerializable
class CategoryUncheckedCreateInput implements _i1.JsonSerializable {
  const CategoryUncheckedCreateInput({
    this.id,
    required this.name,
    required this.color,
    required this.updateAt,
    required this.syncAt,
    required this.deleteAt,
    this.tasks,
  });

  factory CategoryUncheckedCreateInput.fromJson(Map<String, dynamic> json) =>
      _$CategoryUncheckedCreateInputFromJson(json);

  final int? id;

  final String name;

  final int color;

  final BigInt updateAt;

  final BigInt syncAt;

  final BigInt deleteAt;

  final TaskUncheckedCreateNestedManyWithoutCategoryInput? tasks;

  @override
  Map<String, dynamic> toJson() => _$CategoryUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class CategoryUpdateInput implements _i1.JsonSerializable {
  const CategoryUpdateInput({
    this.name,
    this.color,
    this.updateAt,
    this.syncAt,
    this.deleteAt,
    this.tasks,
  });

  factory CategoryUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$CategoryUpdateInputFromJson(json);

  final StringFieldUpdateOperationsInput? name;

  final IntFieldUpdateOperationsInput? color;

  final BigIntFieldUpdateOperationsInput? updateAt;

  final BigIntFieldUpdateOperationsInput? syncAt;

  final BigIntFieldUpdateOperationsInput? deleteAt;

  final TaskUpdateManyWithoutCategoryNestedInput? tasks;

  @override
  Map<String, dynamic> toJson() => _$CategoryUpdateInputToJson(this);
}

@_i1.jsonSerializable
class CategoryUncheckedUpdateInput implements _i1.JsonSerializable {
  const CategoryUncheckedUpdateInput({
    this.id,
    this.name,
    this.color,
    this.updateAt,
    this.syncAt,
    this.deleteAt,
    this.tasks,
  });

  factory CategoryUncheckedUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$CategoryUncheckedUpdateInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? name;

  final IntFieldUpdateOperationsInput? color;

  final BigIntFieldUpdateOperationsInput? updateAt;

  final BigIntFieldUpdateOperationsInput? syncAt;

  final BigIntFieldUpdateOperationsInput? deleteAt;

  final TaskUncheckedUpdateManyWithoutCategoryNestedInput? tasks;

  @override
  Map<String, dynamic> toJson() => _$CategoryUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class CategoryCreateManyInput implements _i1.JsonSerializable {
  const CategoryCreateManyInput({
    this.id,
    required this.name,
    required this.color,
    required this.updateAt,
    required this.syncAt,
    required this.deleteAt,
  });

  factory CategoryCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$CategoryCreateManyInputFromJson(json);

  final int? id;

  final String name;

  final int color;

  final BigInt updateAt;

  final BigInt syncAt;

  final BigInt deleteAt;

  @override
  Map<String, dynamic> toJson() => _$CategoryCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class CategoryUpdateManyMutationInput implements _i1.JsonSerializable {
  const CategoryUpdateManyMutationInput({
    this.name,
    this.color,
    this.updateAt,
    this.syncAt,
    this.deleteAt,
  });

  factory CategoryUpdateManyMutationInput.fromJson(Map<String, dynamic> json) =>
      _$CategoryUpdateManyMutationInputFromJson(json);

  final StringFieldUpdateOperationsInput? name;

  final IntFieldUpdateOperationsInput? color;

  final BigIntFieldUpdateOperationsInput? updateAt;

  final BigIntFieldUpdateOperationsInput? syncAt;

  final BigIntFieldUpdateOperationsInput? deleteAt;

  @override
  Map<String, dynamic> toJson() =>
      _$CategoryUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class CategoryUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const CategoryUncheckedUpdateManyInput({
    this.id,
    this.name,
    this.color,
    this.updateAt,
    this.syncAt,
    this.deleteAt,
  });

  factory CategoryUncheckedUpdateManyInput.fromJson(
          Map<String, dynamic> json) =>
      _$CategoryUncheckedUpdateManyInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? name;

  final IntFieldUpdateOperationsInput? color;

  final BigIntFieldUpdateOperationsInput? updateAt;

  final BigIntFieldUpdateOperationsInput? syncAt;

  final BigIntFieldUpdateOperationsInput? deleteAt;

  @override
  Map<String, dynamic> toJson() =>
      _$CategoryUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class IntFilter implements _i1.JsonSerializable {
  const IntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory IntFilter.fromJson(Map<String, dynamic> json) =>
      _$IntFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntFilter? not;

  @override
  Map<String, dynamic> toJson() => _$IntFilterToJson(this);
}

@_i1.jsonSerializable
class StringFilter implements _i1.JsonSerializable {
  const StringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
  });

  factory StringFilter.fromJson(Map<String, dynamic> json) =>
      _$StringFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final QueryMode? mode;

  final NestedStringFilter? not;

  @override
  Map<String, dynamic> toJson() => _$StringFilterToJson(this);
}

@_i1.jsonSerializable
class BoolFilter implements _i1.JsonSerializable {
  const BoolFilter({
    this.equals,
    this.not,
  });

  factory BoolFilter.fromJson(Map<String, dynamic> json) =>
      _$BoolFilterFromJson(json);

  final bool? equals;

  final NestedBoolFilter? not;

  @override
  Map<String, dynamic> toJson() => _$BoolFilterToJson(this);
}

@_i1.jsonSerializable
class BigIntFilter implements _i1.JsonSerializable {
  const BigIntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory BigIntFilter.fromJson(Map<String, dynamic> json) =>
      _$BigIntFilterFromJson(json);

  final BigInt? equals;

  @JsonKey(name: r'in')
  final Iterable<BigInt>? $in;

  final Iterable<BigInt>? notIn;

  final BigInt? lt;

  final BigInt? lte;

  final BigInt? gt;

  final BigInt? gte;

  final NestedBigIntFilter? not;

  @override
  Map<String, dynamic> toJson() => _$BigIntFilterToJson(this);
}

@_i1.jsonSerializable
class TagListRelationFilter implements _i1.JsonSerializable {
  const TagListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  factory TagListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$TagListRelationFilterFromJson(json);

  final TagWhereInput? every;

  final TagWhereInput? some;

  final TagWhereInput? none;

  @override
  Map<String, dynamic> toJson() => _$TagListRelationFilterToJson(this);
}

@_i1.jsonSerializable
class CategoryRelationFilter implements _i1.JsonSerializable {
  const CategoryRelationFilter({
    this.$is,
    this.isNot,
  });

  factory CategoryRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$CategoryRelationFilterFromJson(json);

  @JsonKey(name: r'is')
  final CategoryWhereInput? $is;

  final CategoryWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => _$CategoryRelationFilterToJson(this);
}

@_i1.jsonSerializable
class TagOrderByRelationAggregateInput implements _i1.JsonSerializable {
  const TagOrderByRelationAggregateInput({this.$count});

  factory TagOrderByRelationAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$TagOrderByRelationAggregateInputFromJson(json);

  @JsonKey(name: r'_count')
  final SortOrder? $count;

  @override
  Map<String, dynamic> toJson() =>
      _$TagOrderByRelationAggregateInputToJson(this);
}

@_i1.jsonSerializable
class TaskCountOrderByAggregateInput implements _i1.JsonSerializable {
  const TaskCountOrderByAggregateInput({
    this.id,
    this.uuid,
    this.title,
    this.status,
    this.categoryId,
    this.updateAt,
    this.syncAt,
    this.deleteAt,
  });

  factory TaskCountOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$TaskCountOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? uuid;

  final SortOrder? title;

  final SortOrder? status;

  final SortOrder? categoryId;

  final SortOrder? updateAt;

  final SortOrder? syncAt;

  final SortOrder? deleteAt;

  @override
  Map<String, dynamic> toJson() => _$TaskCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class TaskAvgOrderByAggregateInput implements _i1.JsonSerializable {
  const TaskAvgOrderByAggregateInput({
    this.id,
    this.categoryId,
    this.updateAt,
    this.syncAt,
    this.deleteAt,
  });

  factory TaskAvgOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$TaskAvgOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? categoryId;

  final SortOrder? updateAt;

  final SortOrder? syncAt;

  final SortOrder? deleteAt;

  @override
  Map<String, dynamic> toJson() => _$TaskAvgOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class TaskMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const TaskMaxOrderByAggregateInput({
    this.id,
    this.uuid,
    this.title,
    this.status,
    this.categoryId,
    this.updateAt,
    this.syncAt,
    this.deleteAt,
  });

  factory TaskMaxOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$TaskMaxOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? uuid;

  final SortOrder? title;

  final SortOrder? status;

  final SortOrder? categoryId;

  final SortOrder? updateAt;

  final SortOrder? syncAt;

  final SortOrder? deleteAt;

  @override
  Map<String, dynamic> toJson() => _$TaskMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class TaskMinOrderByAggregateInput implements _i1.JsonSerializable {
  const TaskMinOrderByAggregateInput({
    this.id,
    this.uuid,
    this.title,
    this.status,
    this.categoryId,
    this.updateAt,
    this.syncAt,
    this.deleteAt,
  });

  factory TaskMinOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$TaskMinOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? uuid;

  final SortOrder? title;

  final SortOrder? status;

  final SortOrder? categoryId;

  final SortOrder? updateAt;

  final SortOrder? syncAt;

  final SortOrder? deleteAt;

  @override
  Map<String, dynamic> toJson() => _$TaskMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class TaskSumOrderByAggregateInput implements _i1.JsonSerializable {
  const TaskSumOrderByAggregateInput({
    this.id,
    this.categoryId,
    this.updateAt,
    this.syncAt,
    this.deleteAt,
  });

  factory TaskSumOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$TaskSumOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? categoryId;

  final SortOrder? updateAt;

  final SortOrder? syncAt;

  final SortOrder? deleteAt;

  @override
  Map<String, dynamic> toJson() => _$TaskSumOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class IntWithAggregatesFilter implements _i1.JsonSerializable {
  const IntWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory IntWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$IntWithAggregatesFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_avg')
  final NestedFloatFilter? $avg;

  @JsonKey(name: r'_sum')
  final NestedIntFilter? $sum;

  @JsonKey(name: r'_min')
  final NestedIntFilter? $min;

  @JsonKey(name: r'_max')
  final NestedIntFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$IntWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class StringWithAggregatesFilter implements _i1.JsonSerializable {
  const StringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory StringWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$StringWithAggregatesFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final QueryMode? mode;

  final NestedStringWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedStringFilter? $min;

  @JsonKey(name: r'_max')
  final NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$StringWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class BoolWithAggregatesFilter implements _i1.JsonSerializable {
  const BoolWithAggregatesFilter({
    this.equals,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory BoolWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$BoolWithAggregatesFilterFromJson(json);

  final bool? equals;

  final NestedBoolWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedBoolFilter? $min;

  @JsonKey(name: r'_max')
  final NestedBoolFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$BoolWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class BigIntWithAggregatesFilter implements _i1.JsonSerializable {
  const BigIntWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory BigIntWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$BigIntWithAggregatesFilterFromJson(json);

  final BigInt? equals;

  @JsonKey(name: r'in')
  final Iterable<BigInt>? $in;

  final Iterable<BigInt>? notIn;

  final BigInt? lt;

  final BigInt? lte;

  final BigInt? gt;

  final BigInt? gte;

  final NestedBigIntWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_avg')
  final NestedFloatFilter? $avg;

  @JsonKey(name: r'_sum')
  final NestedBigIntFilter? $sum;

  @JsonKey(name: r'_min')
  final NestedBigIntFilter? $min;

  @JsonKey(name: r'_max')
  final NestedBigIntFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$BigIntWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class TaskListRelationFilter implements _i1.JsonSerializable {
  const TaskListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  factory TaskListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$TaskListRelationFilterFromJson(json);

  final TaskWhereInput? every;

  final TaskWhereInput? some;

  final TaskWhereInput? none;

  @override
  Map<String, dynamic> toJson() => _$TaskListRelationFilterToJson(this);
}

@_i1.jsonSerializable
class TaskOrderByRelationAggregateInput implements _i1.JsonSerializable {
  const TaskOrderByRelationAggregateInput({this.$count});

  factory TaskOrderByRelationAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$TaskOrderByRelationAggregateInputFromJson(json);

  @JsonKey(name: r'_count')
  final SortOrder? $count;

  @override
  Map<String, dynamic> toJson() =>
      _$TaskOrderByRelationAggregateInputToJson(this);
}

@_i1.jsonSerializable
class TagCountOrderByAggregateInput implements _i1.JsonSerializable {
  const TagCountOrderByAggregateInput({
    this.id,
    this.name,
    this.color,
    this.updateAt,
    this.syncAt,
    this.deleteAt,
  });

  factory TagCountOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$TagCountOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? name;

  final SortOrder? color;

  final SortOrder? updateAt;

  final SortOrder? syncAt;

  final SortOrder? deleteAt;

  @override
  Map<String, dynamic> toJson() => _$TagCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class TagAvgOrderByAggregateInput implements _i1.JsonSerializable {
  const TagAvgOrderByAggregateInput({
    this.id,
    this.color,
    this.updateAt,
    this.syncAt,
    this.deleteAt,
  });

  factory TagAvgOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$TagAvgOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? color;

  final SortOrder? updateAt;

  final SortOrder? syncAt;

  final SortOrder? deleteAt;

  @override
  Map<String, dynamic> toJson() => _$TagAvgOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class TagMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const TagMaxOrderByAggregateInput({
    this.id,
    this.name,
    this.color,
    this.updateAt,
    this.syncAt,
    this.deleteAt,
  });

  factory TagMaxOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$TagMaxOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? name;

  final SortOrder? color;

  final SortOrder? updateAt;

  final SortOrder? syncAt;

  final SortOrder? deleteAt;

  @override
  Map<String, dynamic> toJson() => _$TagMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class TagMinOrderByAggregateInput implements _i1.JsonSerializable {
  const TagMinOrderByAggregateInput({
    this.id,
    this.name,
    this.color,
    this.updateAt,
    this.syncAt,
    this.deleteAt,
  });

  factory TagMinOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$TagMinOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? name;

  final SortOrder? color;

  final SortOrder? updateAt;

  final SortOrder? syncAt;

  final SortOrder? deleteAt;

  @override
  Map<String, dynamic> toJson() => _$TagMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class TagSumOrderByAggregateInput implements _i1.JsonSerializable {
  const TagSumOrderByAggregateInput({
    this.id,
    this.color,
    this.updateAt,
    this.syncAt,
    this.deleteAt,
  });

  factory TagSumOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$TagSumOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? color;

  final SortOrder? updateAt;

  final SortOrder? syncAt;

  final SortOrder? deleteAt;

  @override
  Map<String, dynamic> toJson() => _$TagSumOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class CategoryCountOrderByAggregateInput implements _i1.JsonSerializable {
  const CategoryCountOrderByAggregateInput({
    this.id,
    this.name,
    this.color,
    this.updateAt,
    this.syncAt,
    this.deleteAt,
  });

  factory CategoryCountOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$CategoryCountOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? name;

  final SortOrder? color;

  final SortOrder? updateAt;

  final SortOrder? syncAt;

  final SortOrder? deleteAt;

  @override
  Map<String, dynamic> toJson() =>
      _$CategoryCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class CategoryAvgOrderByAggregateInput implements _i1.JsonSerializable {
  const CategoryAvgOrderByAggregateInput({
    this.id,
    this.color,
    this.updateAt,
    this.syncAt,
    this.deleteAt,
  });

  factory CategoryAvgOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$CategoryAvgOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? color;

  final SortOrder? updateAt;

  final SortOrder? syncAt;

  final SortOrder? deleteAt;

  @override
  Map<String, dynamic> toJson() =>
      _$CategoryAvgOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class CategoryMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const CategoryMaxOrderByAggregateInput({
    this.id,
    this.name,
    this.color,
    this.updateAt,
    this.syncAt,
    this.deleteAt,
  });

  factory CategoryMaxOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$CategoryMaxOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? name;

  final SortOrder? color;

  final SortOrder? updateAt;

  final SortOrder? syncAt;

  final SortOrder? deleteAt;

  @override
  Map<String, dynamic> toJson() =>
      _$CategoryMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class CategoryMinOrderByAggregateInput implements _i1.JsonSerializable {
  const CategoryMinOrderByAggregateInput({
    this.id,
    this.name,
    this.color,
    this.updateAt,
    this.syncAt,
    this.deleteAt,
  });

  factory CategoryMinOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$CategoryMinOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? name;

  final SortOrder? color;

  final SortOrder? updateAt;

  final SortOrder? syncAt;

  final SortOrder? deleteAt;

  @override
  Map<String, dynamic> toJson() =>
      _$CategoryMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class CategorySumOrderByAggregateInput implements _i1.JsonSerializable {
  const CategorySumOrderByAggregateInput({
    this.id,
    this.color,
    this.updateAt,
    this.syncAt,
    this.deleteAt,
  });

  factory CategorySumOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$CategorySumOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? color;

  final SortOrder? updateAt;

  final SortOrder? syncAt;

  final SortOrder? deleteAt;

  @override
  Map<String, dynamic> toJson() =>
      _$CategorySumOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class TagCreateNestedManyWithoutTasksInput implements _i1.JsonSerializable {
  const TagCreateNestedManyWithoutTasksInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  factory TagCreateNestedManyWithoutTasksInput.fromJson(
          Map<String, dynamic> json) =>
      _$TagCreateNestedManyWithoutTasksInputFromJson(json);

  final Iterable<TagCreateWithoutTasksInput>? create;

  final Iterable<TagCreateOrConnectWithoutTasksInput>? connectOrCreate;

  final Iterable<TagWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$TagCreateNestedManyWithoutTasksInputToJson(this);
}

@_i1.jsonSerializable
class CategoryCreateNestedOneWithoutTasksInput implements _i1.JsonSerializable {
  const CategoryCreateNestedOneWithoutTasksInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  factory CategoryCreateNestedOneWithoutTasksInput.fromJson(
          Map<String, dynamic> json) =>
      _$CategoryCreateNestedOneWithoutTasksInputFromJson(json);

  final CategoryCreateWithoutTasksInput? create;

  final CategoryCreateOrConnectWithoutTasksInput? connectOrCreate;

  final CategoryWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$CategoryCreateNestedOneWithoutTasksInputToJson(this);
}

@_i1.jsonSerializable
class TagUncheckedCreateNestedManyWithoutTasksInput
    implements _i1.JsonSerializable {
  const TagUncheckedCreateNestedManyWithoutTasksInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  factory TagUncheckedCreateNestedManyWithoutTasksInput.fromJson(
          Map<String, dynamic> json) =>
      _$TagUncheckedCreateNestedManyWithoutTasksInputFromJson(json);

  final Iterable<TagCreateWithoutTasksInput>? create;

  final Iterable<TagCreateOrConnectWithoutTasksInput>? connectOrCreate;

  final Iterable<TagWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$TagUncheckedCreateNestedManyWithoutTasksInputToJson(this);
}

@_i1.jsonSerializable
class StringFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const StringFieldUpdateOperationsInput({this.set});

  factory StringFieldUpdateOperationsInput.fromJson(
          Map<String, dynamic> json) =>
      _$StringFieldUpdateOperationsInputFromJson(json);

  final String? set;

  @override
  Map<String, dynamic> toJson() =>
      _$StringFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class BoolFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const BoolFieldUpdateOperationsInput({this.set});

  factory BoolFieldUpdateOperationsInput.fromJson(Map<String, dynamic> json) =>
      _$BoolFieldUpdateOperationsInputFromJson(json);

  final bool? set;

  @override
  Map<String, dynamic> toJson() => _$BoolFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class BigIntFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const BigIntFieldUpdateOperationsInput({
    this.set,
    this.increment,
    this.decrement,
    this.multiply,
    this.divide,
  });

  factory BigIntFieldUpdateOperationsInput.fromJson(
          Map<String, dynamic> json) =>
      _$BigIntFieldUpdateOperationsInputFromJson(json);

  final BigInt? set;

  final BigInt? increment;

  final BigInt? decrement;

  final BigInt? multiply;

  final BigInt? divide;

  @override
  Map<String, dynamic> toJson() =>
      _$BigIntFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class TagUpdateManyWithoutTasksNestedInput implements _i1.JsonSerializable {
  const TagUpdateManyWithoutTasksNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory TagUpdateManyWithoutTasksNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$TagUpdateManyWithoutTasksNestedInputFromJson(json);

  final Iterable<TagCreateWithoutTasksInput>? create;

  final Iterable<TagCreateOrConnectWithoutTasksInput>? connectOrCreate;

  final Iterable<TagUpsertWithWhereUniqueWithoutTasksInput>? upsert;

  final Iterable<TagWhereUniqueInput>? set;

  final Iterable<TagWhereUniqueInput>? disconnect;

  final Iterable<TagWhereUniqueInput>? delete;

  final Iterable<TagWhereUniqueInput>? connect;

  final Iterable<TagUpdateWithWhereUniqueWithoutTasksInput>? update;

  final Iterable<TagUpdateManyWithWhereWithoutTasksInput>? updateMany;

  final Iterable<TagScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$TagUpdateManyWithoutTasksNestedInputToJson(this);
}

@_i1.jsonSerializable
class CategoryUpdateOneRequiredWithoutTasksNestedInput
    implements _i1.JsonSerializable {
  const CategoryUpdateOneRequiredWithoutTasksNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  factory CategoryUpdateOneRequiredWithoutTasksNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$CategoryUpdateOneRequiredWithoutTasksNestedInputFromJson(json);

  final CategoryCreateWithoutTasksInput? create;

  final CategoryCreateOrConnectWithoutTasksInput? connectOrCreate;

  final CategoryUpsertWithoutTasksInput? upsert;

  final CategoryWhereUniqueInput? connect;

  final CategoryUpdateWithoutTasksInput? update;

  @override
  Map<String, dynamic> toJson() =>
      _$CategoryUpdateOneRequiredWithoutTasksNestedInputToJson(this);
}

@_i1.jsonSerializable
class IntFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const IntFieldUpdateOperationsInput({
    this.set,
    this.increment,
    this.decrement,
    this.multiply,
    this.divide,
  });

  factory IntFieldUpdateOperationsInput.fromJson(Map<String, dynamic> json) =>
      _$IntFieldUpdateOperationsInputFromJson(json);

  final int? set;

  final int? increment;

  final int? decrement;

  final int? multiply;

  final int? divide;

  @override
  Map<String, dynamic> toJson() => _$IntFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class TagUncheckedUpdateManyWithoutTasksNestedInput
    implements _i1.JsonSerializable {
  const TagUncheckedUpdateManyWithoutTasksNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory TagUncheckedUpdateManyWithoutTasksNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$TagUncheckedUpdateManyWithoutTasksNestedInputFromJson(json);

  final Iterable<TagCreateWithoutTasksInput>? create;

  final Iterable<TagCreateOrConnectWithoutTasksInput>? connectOrCreate;

  final Iterable<TagUpsertWithWhereUniqueWithoutTasksInput>? upsert;

  final Iterable<TagWhereUniqueInput>? set;

  final Iterable<TagWhereUniqueInput>? disconnect;

  final Iterable<TagWhereUniqueInput>? delete;

  final Iterable<TagWhereUniqueInput>? connect;

  final Iterable<TagUpdateWithWhereUniqueWithoutTasksInput>? update;

  final Iterable<TagUpdateManyWithWhereWithoutTasksInput>? updateMany;

  final Iterable<TagScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$TagUncheckedUpdateManyWithoutTasksNestedInputToJson(this);
}

@_i1.jsonSerializable
class TaskCreateNestedManyWithoutTagsInput implements _i1.JsonSerializable {
  const TaskCreateNestedManyWithoutTagsInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  factory TaskCreateNestedManyWithoutTagsInput.fromJson(
          Map<String, dynamic> json) =>
      _$TaskCreateNestedManyWithoutTagsInputFromJson(json);

  final Iterable<TaskCreateWithoutTagsInput>? create;

  final Iterable<TaskCreateOrConnectWithoutTagsInput>? connectOrCreate;

  final Iterable<TaskWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$TaskCreateNestedManyWithoutTagsInputToJson(this);
}

@_i1.jsonSerializable
class TaskUncheckedCreateNestedManyWithoutTagsInput
    implements _i1.JsonSerializable {
  const TaskUncheckedCreateNestedManyWithoutTagsInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  factory TaskUncheckedCreateNestedManyWithoutTagsInput.fromJson(
          Map<String, dynamic> json) =>
      _$TaskUncheckedCreateNestedManyWithoutTagsInputFromJson(json);

  final Iterable<TaskCreateWithoutTagsInput>? create;

  final Iterable<TaskCreateOrConnectWithoutTagsInput>? connectOrCreate;

  final Iterable<TaskWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$TaskUncheckedCreateNestedManyWithoutTagsInputToJson(this);
}

@_i1.jsonSerializable
class TaskUpdateManyWithoutTagsNestedInput implements _i1.JsonSerializable {
  const TaskUpdateManyWithoutTagsNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory TaskUpdateManyWithoutTagsNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$TaskUpdateManyWithoutTagsNestedInputFromJson(json);

  final Iterable<TaskCreateWithoutTagsInput>? create;

  final Iterable<TaskCreateOrConnectWithoutTagsInput>? connectOrCreate;

  final Iterable<TaskUpsertWithWhereUniqueWithoutTagsInput>? upsert;

  final Iterable<TaskWhereUniqueInput>? set;

  final Iterable<TaskWhereUniqueInput>? disconnect;

  final Iterable<TaskWhereUniqueInput>? delete;

  final Iterable<TaskWhereUniqueInput>? connect;

  final Iterable<TaskUpdateWithWhereUniqueWithoutTagsInput>? update;

  final Iterable<TaskUpdateManyWithWhereWithoutTagsInput>? updateMany;

  final Iterable<TaskScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$TaskUpdateManyWithoutTagsNestedInputToJson(this);
}

@_i1.jsonSerializable
class TaskUncheckedUpdateManyWithoutTagsNestedInput
    implements _i1.JsonSerializable {
  const TaskUncheckedUpdateManyWithoutTagsNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory TaskUncheckedUpdateManyWithoutTagsNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$TaskUncheckedUpdateManyWithoutTagsNestedInputFromJson(json);

  final Iterable<TaskCreateWithoutTagsInput>? create;

  final Iterable<TaskCreateOrConnectWithoutTagsInput>? connectOrCreate;

  final Iterable<TaskUpsertWithWhereUniqueWithoutTagsInput>? upsert;

  final Iterable<TaskWhereUniqueInput>? set;

  final Iterable<TaskWhereUniqueInput>? disconnect;

  final Iterable<TaskWhereUniqueInput>? delete;

  final Iterable<TaskWhereUniqueInput>? connect;

  final Iterable<TaskUpdateWithWhereUniqueWithoutTagsInput>? update;

  final Iterable<TaskUpdateManyWithWhereWithoutTagsInput>? updateMany;

  final Iterable<TaskScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$TaskUncheckedUpdateManyWithoutTagsNestedInputToJson(this);
}

@_i1.jsonSerializable
class TaskCreateNestedManyWithoutCategoryInput implements _i1.JsonSerializable {
  const TaskCreateNestedManyWithoutCategoryInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  factory TaskCreateNestedManyWithoutCategoryInput.fromJson(
          Map<String, dynamic> json) =>
      _$TaskCreateNestedManyWithoutCategoryInputFromJson(json);

  final Iterable<TaskCreateWithoutCategoryInput>? create;

  final Iterable<TaskCreateOrConnectWithoutCategoryInput>? connectOrCreate;

  final TaskCreateManyCategoryInputEnvelope? createMany;

  final Iterable<TaskWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$TaskCreateNestedManyWithoutCategoryInputToJson(this);
}

@_i1.jsonSerializable
class TaskUncheckedCreateNestedManyWithoutCategoryInput
    implements _i1.JsonSerializable {
  const TaskUncheckedCreateNestedManyWithoutCategoryInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  factory TaskUncheckedCreateNestedManyWithoutCategoryInput.fromJson(
          Map<String, dynamic> json) =>
      _$TaskUncheckedCreateNestedManyWithoutCategoryInputFromJson(json);

  final Iterable<TaskCreateWithoutCategoryInput>? create;

  final Iterable<TaskCreateOrConnectWithoutCategoryInput>? connectOrCreate;

  final TaskCreateManyCategoryInputEnvelope? createMany;

  final Iterable<TaskWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$TaskUncheckedCreateNestedManyWithoutCategoryInputToJson(this);
}

@_i1.jsonSerializable
class TaskUpdateManyWithoutCategoryNestedInput implements _i1.JsonSerializable {
  const TaskUpdateManyWithoutCategoryNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory TaskUpdateManyWithoutCategoryNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$TaskUpdateManyWithoutCategoryNestedInputFromJson(json);

  final Iterable<TaskCreateWithoutCategoryInput>? create;

  final Iterable<TaskCreateOrConnectWithoutCategoryInput>? connectOrCreate;

  final Iterable<TaskUpsertWithWhereUniqueWithoutCategoryInput>? upsert;

  final TaskCreateManyCategoryInputEnvelope? createMany;

  final Iterable<TaskWhereUniqueInput>? set;

  final Iterable<TaskWhereUniqueInput>? disconnect;

  final Iterable<TaskWhereUniqueInput>? delete;

  final Iterable<TaskWhereUniqueInput>? connect;

  final Iterable<TaskUpdateWithWhereUniqueWithoutCategoryInput>? update;

  final Iterable<TaskUpdateManyWithWhereWithoutCategoryInput>? updateMany;

  final Iterable<TaskScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$TaskUpdateManyWithoutCategoryNestedInputToJson(this);
}

@_i1.jsonSerializable
class TaskUncheckedUpdateManyWithoutCategoryNestedInput
    implements _i1.JsonSerializable {
  const TaskUncheckedUpdateManyWithoutCategoryNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory TaskUncheckedUpdateManyWithoutCategoryNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$TaskUncheckedUpdateManyWithoutCategoryNestedInputFromJson(json);

  final Iterable<TaskCreateWithoutCategoryInput>? create;

  final Iterable<TaskCreateOrConnectWithoutCategoryInput>? connectOrCreate;

  final Iterable<TaskUpsertWithWhereUniqueWithoutCategoryInput>? upsert;

  final TaskCreateManyCategoryInputEnvelope? createMany;

  final Iterable<TaskWhereUniqueInput>? set;

  final Iterable<TaskWhereUniqueInput>? disconnect;

  final Iterable<TaskWhereUniqueInput>? delete;

  final Iterable<TaskWhereUniqueInput>? connect;

  final Iterable<TaskUpdateWithWhereUniqueWithoutCategoryInput>? update;

  final Iterable<TaskUpdateManyWithWhereWithoutCategoryInput>? updateMany;

  final Iterable<TaskScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$TaskUncheckedUpdateManyWithoutCategoryNestedInputToJson(this);
}

@_i1.jsonSerializable
class NestedIntFilter implements _i1.JsonSerializable {
  const NestedIntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedIntFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedIntFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedIntFilterToJson(this);
}

@_i1.jsonSerializable
class NestedStringFilter implements _i1.JsonSerializable {
  const NestedStringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  factory NestedStringFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedStringFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedStringFilterToJson(this);
}

@_i1.jsonSerializable
class NestedBoolFilter implements _i1.JsonSerializable {
  const NestedBoolFilter({
    this.equals,
    this.not,
  });

  factory NestedBoolFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedBoolFilterFromJson(json);

  final bool? equals;

  final NestedBoolFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedBoolFilterToJson(this);
}

@_i1.jsonSerializable
class NestedBigIntFilter implements _i1.JsonSerializable {
  const NestedBigIntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedBigIntFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedBigIntFilterFromJson(json);

  final BigInt? equals;

  @JsonKey(name: r'in')
  final Iterable<BigInt>? $in;

  final Iterable<BigInt>? notIn;

  final BigInt? lt;

  final BigInt? lte;

  final BigInt? gt;

  final BigInt? gte;

  final NestedBigIntFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedBigIntFilterToJson(this);
}

@_i1.jsonSerializable
class NestedIntWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedIntWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory NestedIntWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedIntWithAggregatesFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_avg')
  final NestedFloatFilter? $avg;

  @JsonKey(name: r'_sum')
  final NestedIntFilter? $sum;

  @JsonKey(name: r'_min')
  final NestedIntFilter? $min;

  @JsonKey(name: r'_max')
  final NestedIntFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$NestedIntWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedFloatFilter implements _i1.JsonSerializable {
  const NestedFloatFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedFloatFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedFloatFilterFromJson(json);

  final double? equals;

  @JsonKey(name: r'in')
  final Iterable<double>? $in;

  final Iterable<double>? notIn;

  final double? lt;

  final double? lte;

  final double? gt;

  final double? gte;

  final NestedFloatFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedFloatFilterToJson(this);
}

@_i1.jsonSerializable
class NestedStringWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedStringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory NestedStringWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$NestedStringWithAggregatesFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedStringFilter? $min;

  @JsonKey(name: r'_max')
  final NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$NestedStringWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedBoolWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedBoolWithAggregatesFilter({
    this.equals,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory NestedBoolWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedBoolWithAggregatesFilterFromJson(json);

  final bool? equals;

  final NestedBoolWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedBoolFilter? $min;

  @JsonKey(name: r'_max')
  final NestedBoolFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$NestedBoolWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedBigIntWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedBigIntWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory NestedBigIntWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$NestedBigIntWithAggregatesFilterFromJson(json);

  final BigInt? equals;

  @JsonKey(name: r'in')
  final Iterable<BigInt>? $in;

  final Iterable<BigInt>? notIn;

  final BigInt? lt;

  final BigInt? lte;

  final BigInt? gt;

  final BigInt? gte;

  final NestedBigIntWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_avg')
  final NestedFloatFilter? $avg;

  @JsonKey(name: r'_sum')
  final NestedBigIntFilter? $sum;

  @JsonKey(name: r'_min')
  final NestedBigIntFilter? $min;

  @JsonKey(name: r'_max')
  final NestedBigIntFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$NestedBigIntWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class TagCreateWithoutTasksInput implements _i1.JsonSerializable {
  const TagCreateWithoutTasksInput({
    required this.name,
    required this.color,
    required this.updateAt,
    required this.syncAt,
    required this.deleteAt,
  });

  factory TagCreateWithoutTasksInput.fromJson(Map<String, dynamic> json) =>
      _$TagCreateWithoutTasksInputFromJson(json);

  final String name;

  final int color;

  final BigInt updateAt;

  final BigInt syncAt;

  final BigInt deleteAt;

  @override
  Map<String, dynamic> toJson() => _$TagCreateWithoutTasksInputToJson(this);
}

@_i1.jsonSerializable
class TagUncheckedCreateWithoutTasksInput implements _i1.JsonSerializable {
  const TagUncheckedCreateWithoutTasksInput({
    this.id,
    required this.name,
    required this.color,
    required this.updateAt,
    required this.syncAt,
    required this.deleteAt,
  });

  factory TagUncheckedCreateWithoutTasksInput.fromJson(
          Map<String, dynamic> json) =>
      _$TagUncheckedCreateWithoutTasksInputFromJson(json);

  final int? id;

  final String name;

  final int color;

  final BigInt updateAt;

  final BigInt syncAt;

  final BigInt deleteAt;

  @override
  Map<String, dynamic> toJson() =>
      _$TagUncheckedCreateWithoutTasksInputToJson(this);
}

@_i1.jsonSerializable
class TagCreateOrConnectWithoutTasksInput implements _i1.JsonSerializable {
  const TagCreateOrConnectWithoutTasksInput({
    required this.where,
    required this.create,
  });

  factory TagCreateOrConnectWithoutTasksInput.fromJson(
          Map<String, dynamic> json) =>
      _$TagCreateOrConnectWithoutTasksInputFromJson(json);

  final TagWhereUniqueInput where;

  final TagCreateWithoutTasksInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$TagCreateOrConnectWithoutTasksInputToJson(this);
}

@_i1.jsonSerializable
class CategoryCreateWithoutTasksInput implements _i1.JsonSerializable {
  const CategoryCreateWithoutTasksInput({
    required this.name,
    required this.color,
    required this.updateAt,
    required this.syncAt,
    required this.deleteAt,
  });

  factory CategoryCreateWithoutTasksInput.fromJson(Map<String, dynamic> json) =>
      _$CategoryCreateWithoutTasksInputFromJson(json);

  final String name;

  final int color;

  final BigInt updateAt;

  final BigInt syncAt;

  final BigInt deleteAt;

  @override
  Map<String, dynamic> toJson() =>
      _$CategoryCreateWithoutTasksInputToJson(this);
}

@_i1.jsonSerializable
class CategoryUncheckedCreateWithoutTasksInput implements _i1.JsonSerializable {
  const CategoryUncheckedCreateWithoutTasksInput({
    this.id,
    required this.name,
    required this.color,
    required this.updateAt,
    required this.syncAt,
    required this.deleteAt,
  });

  factory CategoryUncheckedCreateWithoutTasksInput.fromJson(
          Map<String, dynamic> json) =>
      _$CategoryUncheckedCreateWithoutTasksInputFromJson(json);

  final int? id;

  final String name;

  final int color;

  final BigInt updateAt;

  final BigInt syncAt;

  final BigInt deleteAt;

  @override
  Map<String, dynamic> toJson() =>
      _$CategoryUncheckedCreateWithoutTasksInputToJson(this);
}

@_i1.jsonSerializable
class CategoryCreateOrConnectWithoutTasksInput implements _i1.JsonSerializable {
  const CategoryCreateOrConnectWithoutTasksInput({
    required this.where,
    required this.create,
  });

  factory CategoryCreateOrConnectWithoutTasksInput.fromJson(
          Map<String, dynamic> json) =>
      _$CategoryCreateOrConnectWithoutTasksInputFromJson(json);

  final CategoryWhereUniqueInput where;

  final CategoryCreateWithoutTasksInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$CategoryCreateOrConnectWithoutTasksInputToJson(this);
}

@_i1.jsonSerializable
class TagUpsertWithWhereUniqueWithoutTasksInput
    implements _i1.JsonSerializable {
  const TagUpsertWithWhereUniqueWithoutTasksInput({
    required this.where,
    required this.update,
    required this.create,
  });

  factory TagUpsertWithWhereUniqueWithoutTasksInput.fromJson(
          Map<String, dynamic> json) =>
      _$TagUpsertWithWhereUniqueWithoutTasksInputFromJson(json);

  final TagWhereUniqueInput where;

  final TagUpdateWithoutTasksInput update;

  final TagCreateWithoutTasksInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$TagUpsertWithWhereUniqueWithoutTasksInputToJson(this);
}

@_i1.jsonSerializable
class TagUpdateWithWhereUniqueWithoutTasksInput
    implements _i1.JsonSerializable {
  const TagUpdateWithWhereUniqueWithoutTasksInput({
    required this.where,
    required this.data,
  });

  factory TagUpdateWithWhereUniqueWithoutTasksInput.fromJson(
          Map<String, dynamic> json) =>
      _$TagUpdateWithWhereUniqueWithoutTasksInputFromJson(json);

  final TagWhereUniqueInput where;

  final TagUpdateWithoutTasksInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$TagUpdateWithWhereUniqueWithoutTasksInputToJson(this);
}

@_i1.jsonSerializable
class TagUpdateManyWithWhereWithoutTasksInput implements _i1.JsonSerializable {
  const TagUpdateManyWithWhereWithoutTasksInput({
    required this.where,
    required this.data,
  });

  factory TagUpdateManyWithWhereWithoutTasksInput.fromJson(
          Map<String, dynamic> json) =>
      _$TagUpdateManyWithWhereWithoutTasksInputFromJson(json);

  final TagScalarWhereInput where;

  final TagUpdateManyMutationInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$TagUpdateManyWithWhereWithoutTasksInputToJson(this);
}

@_i1.jsonSerializable
class TagScalarWhereInput implements _i1.JsonSerializable {
  const TagScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.name,
    this.color,
    this.updateAt,
    this.syncAt,
    this.deleteAt,
  });

  factory TagScalarWhereInput.fromJson(Map<String, dynamic> json) =>
      _$TagScalarWhereInputFromJson(json);

  final Iterable<TagScalarWhereInput>? AND;

  final Iterable<TagScalarWhereInput>? OR;

  final Iterable<TagScalarWhereInput>? NOT;

  final IntFilter? id;

  final StringFilter? name;

  final IntFilter? color;

  final BigIntFilter? updateAt;

  final BigIntFilter? syncAt;

  final BigIntFilter? deleteAt;

  @override
  Map<String, dynamic> toJson() => _$TagScalarWhereInputToJson(this);
}

@_i1.jsonSerializable
class CategoryUpsertWithoutTasksInput implements _i1.JsonSerializable {
  const CategoryUpsertWithoutTasksInput({
    required this.update,
    required this.create,
  });

  factory CategoryUpsertWithoutTasksInput.fromJson(Map<String, dynamic> json) =>
      _$CategoryUpsertWithoutTasksInputFromJson(json);

  final CategoryUpdateWithoutTasksInput update;

  final CategoryCreateWithoutTasksInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$CategoryUpsertWithoutTasksInputToJson(this);
}

@_i1.jsonSerializable
class CategoryUpdateWithoutTasksInput implements _i1.JsonSerializable {
  const CategoryUpdateWithoutTasksInput({
    this.name,
    this.color,
    this.updateAt,
    this.syncAt,
    this.deleteAt,
  });

  factory CategoryUpdateWithoutTasksInput.fromJson(Map<String, dynamic> json) =>
      _$CategoryUpdateWithoutTasksInputFromJson(json);

  final StringFieldUpdateOperationsInput? name;

  final IntFieldUpdateOperationsInput? color;

  final BigIntFieldUpdateOperationsInput? updateAt;

  final BigIntFieldUpdateOperationsInput? syncAt;

  final BigIntFieldUpdateOperationsInput? deleteAt;

  @override
  Map<String, dynamic> toJson() =>
      _$CategoryUpdateWithoutTasksInputToJson(this);
}

@_i1.jsonSerializable
class CategoryUncheckedUpdateWithoutTasksInput implements _i1.JsonSerializable {
  const CategoryUncheckedUpdateWithoutTasksInput({
    this.id,
    this.name,
    this.color,
    this.updateAt,
    this.syncAt,
    this.deleteAt,
  });

  factory CategoryUncheckedUpdateWithoutTasksInput.fromJson(
          Map<String, dynamic> json) =>
      _$CategoryUncheckedUpdateWithoutTasksInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? name;

  final IntFieldUpdateOperationsInput? color;

  final BigIntFieldUpdateOperationsInput? updateAt;

  final BigIntFieldUpdateOperationsInput? syncAt;

  final BigIntFieldUpdateOperationsInput? deleteAt;

  @override
  Map<String, dynamic> toJson() =>
      _$CategoryUncheckedUpdateWithoutTasksInputToJson(this);
}

@_i1.jsonSerializable
class TaskCreateWithoutTagsInput implements _i1.JsonSerializable {
  const TaskCreateWithoutTagsInput({
    required this.uuid,
    required this.title,
    required this.status,
    required this.updateAt,
    required this.syncAt,
    required this.deleteAt,
    required this.category,
  });

  factory TaskCreateWithoutTagsInput.fromJson(Map<String, dynamic> json) =>
      _$TaskCreateWithoutTagsInputFromJson(json);

  final String uuid;

  final String title;

  final bool status;

  final BigInt updateAt;

  final BigInt syncAt;

  final BigInt deleteAt;

  final CategoryCreateNestedOneWithoutTasksInput category;

  @override
  Map<String, dynamic> toJson() => _$TaskCreateWithoutTagsInputToJson(this);
}

@_i1.jsonSerializable
class TaskUncheckedCreateWithoutTagsInput implements _i1.JsonSerializable {
  const TaskUncheckedCreateWithoutTagsInput({
    this.id,
    required this.uuid,
    required this.title,
    required this.status,
    required this.categoryId,
    required this.updateAt,
    required this.syncAt,
    required this.deleteAt,
  });

  factory TaskUncheckedCreateWithoutTagsInput.fromJson(
          Map<String, dynamic> json) =>
      _$TaskUncheckedCreateWithoutTagsInputFromJson(json);

  final int? id;

  final String uuid;

  final String title;

  final bool status;

  final int categoryId;

  final BigInt updateAt;

  final BigInt syncAt;

  final BigInt deleteAt;

  @override
  Map<String, dynamic> toJson() =>
      _$TaskUncheckedCreateWithoutTagsInputToJson(this);
}

@_i1.jsonSerializable
class TaskCreateOrConnectWithoutTagsInput implements _i1.JsonSerializable {
  const TaskCreateOrConnectWithoutTagsInput({
    required this.where,
    required this.create,
  });

  factory TaskCreateOrConnectWithoutTagsInput.fromJson(
          Map<String, dynamic> json) =>
      _$TaskCreateOrConnectWithoutTagsInputFromJson(json);

  final TaskWhereUniqueInput where;

  final TaskCreateWithoutTagsInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$TaskCreateOrConnectWithoutTagsInputToJson(this);
}

@_i1.jsonSerializable
class TaskUpsertWithWhereUniqueWithoutTagsInput
    implements _i1.JsonSerializable {
  const TaskUpsertWithWhereUniqueWithoutTagsInput({
    required this.where,
    required this.update,
    required this.create,
  });

  factory TaskUpsertWithWhereUniqueWithoutTagsInput.fromJson(
          Map<String, dynamic> json) =>
      _$TaskUpsertWithWhereUniqueWithoutTagsInputFromJson(json);

  final TaskWhereUniqueInput where;

  final TaskUpdateWithoutTagsInput update;

  final TaskCreateWithoutTagsInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$TaskUpsertWithWhereUniqueWithoutTagsInputToJson(this);
}

@_i1.jsonSerializable
class TaskUpdateWithWhereUniqueWithoutTagsInput
    implements _i1.JsonSerializable {
  const TaskUpdateWithWhereUniqueWithoutTagsInput({
    required this.where,
    required this.data,
  });

  factory TaskUpdateWithWhereUniqueWithoutTagsInput.fromJson(
          Map<String, dynamic> json) =>
      _$TaskUpdateWithWhereUniqueWithoutTagsInputFromJson(json);

  final TaskWhereUniqueInput where;

  final TaskUpdateWithoutTagsInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$TaskUpdateWithWhereUniqueWithoutTagsInputToJson(this);
}

@_i1.jsonSerializable
class TaskUpdateManyWithWhereWithoutTagsInput implements _i1.JsonSerializable {
  const TaskUpdateManyWithWhereWithoutTagsInput({
    required this.where,
    required this.data,
  });

  factory TaskUpdateManyWithWhereWithoutTagsInput.fromJson(
          Map<String, dynamic> json) =>
      _$TaskUpdateManyWithWhereWithoutTagsInputFromJson(json);

  final TaskScalarWhereInput where;

  final TaskUpdateManyMutationInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$TaskUpdateManyWithWhereWithoutTagsInputToJson(this);
}

@_i1.jsonSerializable
class TaskScalarWhereInput implements _i1.JsonSerializable {
  const TaskScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.uuid,
    this.title,
    this.status,
    this.categoryId,
    this.updateAt,
    this.syncAt,
    this.deleteAt,
  });

  factory TaskScalarWhereInput.fromJson(Map<String, dynamic> json) =>
      _$TaskScalarWhereInputFromJson(json);

  final Iterable<TaskScalarWhereInput>? AND;

  final Iterable<TaskScalarWhereInput>? OR;

  final Iterable<TaskScalarWhereInput>? NOT;

  final IntFilter? id;

  final StringFilter? uuid;

  final StringFilter? title;

  final BoolFilter? status;

  final IntFilter? categoryId;

  final BigIntFilter? updateAt;

  final BigIntFilter? syncAt;

  final BigIntFilter? deleteAt;

  @override
  Map<String, dynamic> toJson() => _$TaskScalarWhereInputToJson(this);
}

@_i1.jsonSerializable
class TaskCreateWithoutCategoryInput implements _i1.JsonSerializable {
  const TaskCreateWithoutCategoryInput({
    required this.uuid,
    required this.title,
    required this.status,
    required this.updateAt,
    required this.syncAt,
    required this.deleteAt,
    this.tags,
  });

  factory TaskCreateWithoutCategoryInput.fromJson(Map<String, dynamic> json) =>
      _$TaskCreateWithoutCategoryInputFromJson(json);

  final String uuid;

  final String title;

  final bool status;

  final BigInt updateAt;

  final BigInt syncAt;

  final BigInt deleteAt;

  final TagCreateNestedManyWithoutTasksInput? tags;

  @override
  Map<String, dynamic> toJson() => _$TaskCreateWithoutCategoryInputToJson(this);
}

@_i1.jsonSerializable
class TaskUncheckedCreateWithoutCategoryInput implements _i1.JsonSerializable {
  const TaskUncheckedCreateWithoutCategoryInput({
    this.id,
    required this.uuid,
    required this.title,
    required this.status,
    required this.updateAt,
    required this.syncAt,
    required this.deleteAt,
    this.tags,
  });

  factory TaskUncheckedCreateWithoutCategoryInput.fromJson(
          Map<String, dynamic> json) =>
      _$TaskUncheckedCreateWithoutCategoryInputFromJson(json);

  final int? id;

  final String uuid;

  final String title;

  final bool status;

  final BigInt updateAt;

  final BigInt syncAt;

  final BigInt deleteAt;

  final TagUncheckedCreateNestedManyWithoutTasksInput? tags;

  @override
  Map<String, dynamic> toJson() =>
      _$TaskUncheckedCreateWithoutCategoryInputToJson(this);
}

@_i1.jsonSerializable
class TaskCreateOrConnectWithoutCategoryInput implements _i1.JsonSerializable {
  const TaskCreateOrConnectWithoutCategoryInput({
    required this.where,
    required this.create,
  });

  factory TaskCreateOrConnectWithoutCategoryInput.fromJson(
          Map<String, dynamic> json) =>
      _$TaskCreateOrConnectWithoutCategoryInputFromJson(json);

  final TaskWhereUniqueInput where;

  final TaskCreateWithoutCategoryInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$TaskCreateOrConnectWithoutCategoryInputToJson(this);
}

@_i1.jsonSerializable
class TaskCreateManyCategoryInputEnvelope implements _i1.JsonSerializable {
  const TaskCreateManyCategoryInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  factory TaskCreateManyCategoryInputEnvelope.fromJson(
          Map<String, dynamic> json) =>
      _$TaskCreateManyCategoryInputEnvelopeFromJson(json);

  final Iterable<TaskCreateManyCategoryInput> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() =>
      _$TaskCreateManyCategoryInputEnvelopeToJson(this);
}

@_i1.jsonSerializable
class TaskUpsertWithWhereUniqueWithoutCategoryInput
    implements _i1.JsonSerializable {
  const TaskUpsertWithWhereUniqueWithoutCategoryInput({
    required this.where,
    required this.update,
    required this.create,
  });

  factory TaskUpsertWithWhereUniqueWithoutCategoryInput.fromJson(
          Map<String, dynamic> json) =>
      _$TaskUpsertWithWhereUniqueWithoutCategoryInputFromJson(json);

  final TaskWhereUniqueInput where;

  final TaskUpdateWithoutCategoryInput update;

  final TaskCreateWithoutCategoryInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$TaskUpsertWithWhereUniqueWithoutCategoryInputToJson(this);
}

@_i1.jsonSerializable
class TaskUpdateWithWhereUniqueWithoutCategoryInput
    implements _i1.JsonSerializable {
  const TaskUpdateWithWhereUniqueWithoutCategoryInput({
    required this.where,
    required this.data,
  });

  factory TaskUpdateWithWhereUniqueWithoutCategoryInput.fromJson(
          Map<String, dynamic> json) =>
      _$TaskUpdateWithWhereUniqueWithoutCategoryInputFromJson(json);

  final TaskWhereUniqueInput where;

  final TaskUpdateWithoutCategoryInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$TaskUpdateWithWhereUniqueWithoutCategoryInputToJson(this);
}

@_i1.jsonSerializable
class TaskUpdateManyWithWhereWithoutCategoryInput
    implements _i1.JsonSerializable {
  const TaskUpdateManyWithWhereWithoutCategoryInput({
    required this.where,
    required this.data,
  });

  factory TaskUpdateManyWithWhereWithoutCategoryInput.fromJson(
          Map<String, dynamic> json) =>
      _$TaskUpdateManyWithWhereWithoutCategoryInputFromJson(json);

  final TaskScalarWhereInput where;

  final TaskUpdateManyMutationInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$TaskUpdateManyWithWhereWithoutCategoryInputToJson(this);
}

@_i1.jsonSerializable
class TagUpdateWithoutTasksInput implements _i1.JsonSerializable {
  const TagUpdateWithoutTasksInput({
    this.name,
    this.color,
    this.updateAt,
    this.syncAt,
    this.deleteAt,
  });

  factory TagUpdateWithoutTasksInput.fromJson(Map<String, dynamic> json) =>
      _$TagUpdateWithoutTasksInputFromJson(json);

  final StringFieldUpdateOperationsInput? name;

  final IntFieldUpdateOperationsInput? color;

  final BigIntFieldUpdateOperationsInput? updateAt;

  final BigIntFieldUpdateOperationsInput? syncAt;

  final BigIntFieldUpdateOperationsInput? deleteAt;

  @override
  Map<String, dynamic> toJson() => _$TagUpdateWithoutTasksInputToJson(this);
}

@_i1.jsonSerializable
class TagUncheckedUpdateWithoutTasksInput implements _i1.JsonSerializable {
  const TagUncheckedUpdateWithoutTasksInput({
    this.id,
    this.name,
    this.color,
    this.updateAt,
    this.syncAt,
    this.deleteAt,
  });

  factory TagUncheckedUpdateWithoutTasksInput.fromJson(
          Map<String, dynamic> json) =>
      _$TagUncheckedUpdateWithoutTasksInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? name;

  final IntFieldUpdateOperationsInput? color;

  final BigIntFieldUpdateOperationsInput? updateAt;

  final BigIntFieldUpdateOperationsInput? syncAt;

  final BigIntFieldUpdateOperationsInput? deleteAt;

  @override
  Map<String, dynamic> toJson() =>
      _$TagUncheckedUpdateWithoutTasksInputToJson(this);
}

@_i1.jsonSerializable
class TagUncheckedUpdateManyWithoutTagsInput implements _i1.JsonSerializable {
  const TagUncheckedUpdateManyWithoutTagsInput({
    this.id,
    this.name,
    this.color,
    this.updateAt,
    this.syncAt,
    this.deleteAt,
  });

  factory TagUncheckedUpdateManyWithoutTagsInput.fromJson(
          Map<String, dynamic> json) =>
      _$TagUncheckedUpdateManyWithoutTagsInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? name;

  final IntFieldUpdateOperationsInput? color;

  final BigIntFieldUpdateOperationsInput? updateAt;

  final BigIntFieldUpdateOperationsInput? syncAt;

  final BigIntFieldUpdateOperationsInput? deleteAt;

  @override
  Map<String, dynamic> toJson() =>
      _$TagUncheckedUpdateManyWithoutTagsInputToJson(this);
}

@_i1.jsonSerializable
class TaskUpdateWithoutTagsInput implements _i1.JsonSerializable {
  const TaskUpdateWithoutTagsInput({
    this.uuid,
    this.title,
    this.status,
    this.updateAt,
    this.syncAt,
    this.deleteAt,
    this.category,
  });

  factory TaskUpdateWithoutTagsInput.fromJson(Map<String, dynamic> json) =>
      _$TaskUpdateWithoutTagsInputFromJson(json);

  final StringFieldUpdateOperationsInput? uuid;

  final StringFieldUpdateOperationsInput? title;

  final BoolFieldUpdateOperationsInput? status;

  final BigIntFieldUpdateOperationsInput? updateAt;

  final BigIntFieldUpdateOperationsInput? syncAt;

  final BigIntFieldUpdateOperationsInput? deleteAt;

  final CategoryUpdateOneRequiredWithoutTasksNestedInput? category;

  @override
  Map<String, dynamic> toJson() => _$TaskUpdateWithoutTagsInputToJson(this);
}

@_i1.jsonSerializable
class TaskUncheckedUpdateWithoutTagsInput implements _i1.JsonSerializable {
  const TaskUncheckedUpdateWithoutTagsInput({
    this.id,
    this.uuid,
    this.title,
    this.status,
    this.categoryId,
    this.updateAt,
    this.syncAt,
    this.deleteAt,
  });

  factory TaskUncheckedUpdateWithoutTagsInput.fromJson(
          Map<String, dynamic> json) =>
      _$TaskUncheckedUpdateWithoutTagsInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? uuid;

  final StringFieldUpdateOperationsInput? title;

  final BoolFieldUpdateOperationsInput? status;

  final IntFieldUpdateOperationsInput? categoryId;

  final BigIntFieldUpdateOperationsInput? updateAt;

  final BigIntFieldUpdateOperationsInput? syncAt;

  final BigIntFieldUpdateOperationsInput? deleteAt;

  @override
  Map<String, dynamic> toJson() =>
      _$TaskUncheckedUpdateWithoutTagsInputToJson(this);
}

@_i1.jsonSerializable
class TaskUncheckedUpdateManyWithoutTasksInput implements _i1.JsonSerializable {
  const TaskUncheckedUpdateManyWithoutTasksInput({
    this.id,
    this.uuid,
    this.title,
    this.status,
    this.categoryId,
    this.updateAt,
    this.syncAt,
    this.deleteAt,
  });

  factory TaskUncheckedUpdateManyWithoutTasksInput.fromJson(
          Map<String, dynamic> json) =>
      _$TaskUncheckedUpdateManyWithoutTasksInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? uuid;

  final StringFieldUpdateOperationsInput? title;

  final BoolFieldUpdateOperationsInput? status;

  final IntFieldUpdateOperationsInput? categoryId;

  final BigIntFieldUpdateOperationsInput? updateAt;

  final BigIntFieldUpdateOperationsInput? syncAt;

  final BigIntFieldUpdateOperationsInput? deleteAt;

  @override
  Map<String, dynamic> toJson() =>
      _$TaskUncheckedUpdateManyWithoutTasksInputToJson(this);
}

@_i1.jsonSerializable
class TaskCreateManyCategoryInput implements _i1.JsonSerializable {
  const TaskCreateManyCategoryInput({
    this.id,
    required this.uuid,
    required this.title,
    required this.status,
    required this.updateAt,
    required this.syncAt,
    required this.deleteAt,
  });

  factory TaskCreateManyCategoryInput.fromJson(Map<String, dynamic> json) =>
      _$TaskCreateManyCategoryInputFromJson(json);

  final int? id;

  final String uuid;

  final String title;

  final bool status;

  final BigInt updateAt;

  final BigInt syncAt;

  final BigInt deleteAt;

  @override
  Map<String, dynamic> toJson() => _$TaskCreateManyCategoryInputToJson(this);
}

@_i1.jsonSerializable
class TaskUpdateWithoutCategoryInput implements _i1.JsonSerializable {
  const TaskUpdateWithoutCategoryInput({
    this.uuid,
    this.title,
    this.status,
    this.updateAt,
    this.syncAt,
    this.deleteAt,
    this.tags,
  });

  factory TaskUpdateWithoutCategoryInput.fromJson(Map<String, dynamic> json) =>
      _$TaskUpdateWithoutCategoryInputFromJson(json);

  final StringFieldUpdateOperationsInput? uuid;

  final StringFieldUpdateOperationsInput? title;

  final BoolFieldUpdateOperationsInput? status;

  final BigIntFieldUpdateOperationsInput? updateAt;

  final BigIntFieldUpdateOperationsInput? syncAt;

  final BigIntFieldUpdateOperationsInput? deleteAt;

  final TagUpdateManyWithoutTasksNestedInput? tags;

  @override
  Map<String, dynamic> toJson() => _$TaskUpdateWithoutCategoryInputToJson(this);
}

@_i1.jsonSerializable
class TaskUncheckedUpdateWithoutCategoryInput implements _i1.JsonSerializable {
  const TaskUncheckedUpdateWithoutCategoryInput({
    this.id,
    this.uuid,
    this.title,
    this.status,
    this.updateAt,
    this.syncAt,
    this.deleteAt,
    this.tags,
  });

  factory TaskUncheckedUpdateWithoutCategoryInput.fromJson(
          Map<String, dynamic> json) =>
      _$TaskUncheckedUpdateWithoutCategoryInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? uuid;

  final StringFieldUpdateOperationsInput? title;

  final BoolFieldUpdateOperationsInput? status;

  final BigIntFieldUpdateOperationsInput? updateAt;

  final BigIntFieldUpdateOperationsInput? syncAt;

  final BigIntFieldUpdateOperationsInput? deleteAt;

  final TagUncheckedUpdateManyWithoutTasksNestedInput? tags;

  @override
  Map<String, dynamic> toJson() =>
      _$TaskUncheckedUpdateWithoutCategoryInputToJson(this);
}

@_i1.jsonSerializable
class Task implements _i1.JsonSerializable {
  const Task({
    required this.id,
    required this.uuid,
    required this.title,
    required this.status,
    required this.categoryId,
    required this.updateAt,
    required this.syncAt,
    required this.deleteAt,
  });

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);

  final int id;

  final String uuid;

  final String title;

  final bool status;

  final int categoryId;

  final BigInt updateAt;

  final BigInt syncAt;

  final BigInt deleteAt;

  @override
  Map<String, dynamic> toJson() => _$TaskToJson(this);
}

@_i1.jsonSerializable
class Tag implements _i1.JsonSerializable {
  const Tag({
    required this.id,
    required this.name,
    required this.color,
    required this.updateAt,
    required this.syncAt,
    required this.deleteAt,
  });

  factory Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);

  final int id;

  final String name;

  final int color;

  final BigInt updateAt;

  final BigInt syncAt;

  final BigInt deleteAt;

  @override
  Map<String, dynamic> toJson() => _$TagToJson(this);
}

@_i1.jsonSerializable
class Category implements _i1.JsonSerializable {
  const Category({
    required this.id,
    required this.name,
    required this.color,
    required this.updateAt,
    required this.syncAt,
    required this.deleteAt,
  });

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  final int id;

  final String name;

  final int color;

  final BigInt updateAt;

  final BigInt syncAt;

  final BigInt deleteAt;

  @override
  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}

class TaskFluent<T> extends _i1.PrismaFluent<T> {
  const TaskFluent(
    super.original,
    super.$query,
  );

  Future<Iterable<Tag>?> tags({
    TagWhereInput? where,
    Iterable<TagOrderByWithRelationInput>? orderBy,
    TagWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<TagScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'tags',
          fields: fields,
          args: args,
        )
      ]),
      key: r'tags',
    );
    final fields = TagScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> tags) =>
        tags.map((Map tags) => Tag.fromJson(tags.cast()));
    return query(fields)
        .then((json) => json is Iterable ? compiler(json.cast()) : null);
  }

  CategoryFluent<Category> category() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'category',
          fields: fields,
        )
      ]),
      key: r'category',
    );
    final future = query(CategoryScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Category.fromJson(json.cast<String, dynamic>())
            : throw Exception('Not found TypeRefType.string(value: Category)'));
    return CategoryFluent<Category>(
      future,
      query,
    );
  }

  TaskCountOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return TaskCountOutputType(query);
  }
}

class TagFluent<T> extends _i1.PrismaFluent<T> {
  const TagFluent(
    super.original,
    super.$query,
  );

  Future<Iterable<Task>?> tasks({
    TaskWhereInput? where,
    Iterable<TaskOrderByWithRelationInput>? orderBy,
    TaskWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<TaskScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'tasks',
          fields: fields,
          args: args,
        )
      ]),
      key: r'tasks',
    );
    final fields = TaskScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> tasks) =>
        tasks.map((Map tasks) => Task.fromJson(tasks.cast()));
    return query(fields)
        .then((json) => json is Iterable ? compiler(json.cast()) : null);
  }

  TagCountOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return TagCountOutputType(query);
  }
}

class CategoryFluent<T> extends _i1.PrismaFluent<T> {
  const CategoryFluent(
    super.original,
    super.$query,
  );

  Future<Iterable<Task>?> tasks({
    TaskWhereInput? where,
    Iterable<TaskOrderByWithRelationInput>? orderBy,
    TaskWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<TaskScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'tasks',
          fields: fields,
          args: args,
        )
      ]),
      key: r'tasks',
    );
    final fields = TaskScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> tasks) =>
        tasks.map((Map tasks) => Task.fromJson(tasks.cast()));
    return query(fields)
        .then((json) => json is Iterable ? compiler(json.cast()) : null);
  }

  CategoryCountOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return CategoryCountOutputType(query);
  }
}

extension TaskModelDelegateExtension on _i1.ModelDelegate<Task> {
  TaskFluent<Task?> findUnique({required TaskWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueTask',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueTask',
    );
    final future = query(TaskScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Task.fromJson(json.cast<String, dynamic>()) : null);
    return TaskFluent<Task?>(
      future,
      query,
    );
  }

  TaskFluent<Task> findUniqueOrThrow({required TaskWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueTaskOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueTaskOrThrow',
    );
    final future = query(TaskScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Task.fromJson(json.cast<String, dynamic>())
            : throw Exception('Not found TypeRefType.string(value: Task)'));
    return TaskFluent<Task>(
      future,
      query,
    );
  }

  TaskFluent<Task?> findFirst({
    TaskWhereInput? where,
    Iterable<TaskOrderByWithRelationInput>? orderBy,
    TaskWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<TaskScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstTask',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstTask',
    );
    final future = query(TaskScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Task.fromJson(json.cast<String, dynamic>()) : null);
    return TaskFluent<Task?>(
      future,
      query,
    );
  }

  TaskFluent<Task> findFirstOrThrow({
    TaskWhereInput? where,
    Iterable<TaskOrderByWithRelationInput>? orderBy,
    TaskWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<TaskScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstTaskOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstTaskOrThrow',
    );
    final future = query(TaskScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Task.fromJson(json.cast<String, dynamic>())
            : throw Exception('Not found TypeRefType.string(value: Task)'));
    return TaskFluent<Task>(
      future,
      query,
    );
  }

  Future<Iterable<Task>> findMany({
    TaskWhereInput? where,
    Iterable<TaskOrderByWithRelationInput>? orderBy,
    TaskWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<TaskScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManyTask',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManyTask',
    );
    final fields = TaskScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManyTask) => findManyTask
        .map((Map findManyTask) => Task.fromJson(findManyTask.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  TaskFluent<Task> create({required TaskCreateInput data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOneTask',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOneTask',
    );
    final future = query(TaskScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Task.fromJson(json.cast<String, dynamic>())
            : throw Exception('Not found TypeRefType.string(value: Task)'));
    return TaskFluent<Task>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<TaskCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManyTask',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManyTask',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManyTask) =>
        AffectedRowsOutput.fromJson(createManyTask.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  TaskFluent<Task?> update({
    required TaskUpdateInput data,
    required TaskWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOneTask',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOneTask',
    );
    final future = query(TaskScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Task.fromJson(json.cast<String, dynamic>()) : null);
    return TaskFluent<Task?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required TaskUpdateManyMutationInput data,
    TaskWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManyTask',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManyTask',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManyTask) =>
        AffectedRowsOutput.fromJson(updateManyTask.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  TaskFluent<Task> upsert({
    required TaskWhereUniqueInput where,
    required TaskCreateInput create,
    required TaskUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOneTask',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOneTask',
    );
    final future = query(TaskScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Task.fromJson(json.cast<String, dynamic>())
            : throw Exception('Not found TypeRefType.string(value: Task)'));
    return TaskFluent<Task>(
      future,
      query,
    );
  }

  TaskFluent<Task?> delete({required TaskWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOneTask',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOneTask',
    );
    final future = query(TaskScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Task.fromJson(json.cast<String, dynamic>()) : null);
    return TaskFluent<Task?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({TaskWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManyTask',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManyTask',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManyTask) =>
        AffectedRowsOutput.fromJson(deleteManyTask.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateTask aggregate({
    TaskWhereInput? where,
    Iterable<TaskOrderByWithRelationInput>? orderBy,
    TaskWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregateTask',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregateTask',
    );
    return AggregateTask(query);
  }

  Future<Iterable<TaskGroupByOutputType>> groupBy({
    TaskWhereInput? where,
    Iterable<TaskOrderByWithAggregationInput>? orderBy,
    required Iterable<TaskScalarFieldEnum> by,
    TaskScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupByTask',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupByTask',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupByTask) => groupByTask.map((Map groupByTask) =>
        TaskGroupByOutputType.fromJson(groupByTask.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

extension TagModelDelegateExtension on _i1.ModelDelegate<Tag> {
  TagFluent<Tag?> findUnique({required TagWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueTag',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueTag',
    );
    final future = query(TagScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Tag.fromJson(json.cast<String, dynamic>()) : null);
    return TagFluent<Tag?>(
      future,
      query,
    );
  }

  TagFluent<Tag> findUniqueOrThrow({required TagWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueTagOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueTagOrThrow',
    );
    final future = query(TagScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Tag.fromJson(json.cast<String, dynamic>())
            : throw Exception('Not found TypeRefType.string(value: Tag)'));
    return TagFluent<Tag>(
      future,
      query,
    );
  }

  TagFluent<Tag?> findFirst({
    TagWhereInput? where,
    Iterable<TagOrderByWithRelationInput>? orderBy,
    TagWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<TagScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstTag',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstTag',
    );
    final future = query(TagScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Tag.fromJson(json.cast<String, dynamic>()) : null);
    return TagFluent<Tag?>(
      future,
      query,
    );
  }

  TagFluent<Tag> findFirstOrThrow({
    TagWhereInput? where,
    Iterable<TagOrderByWithRelationInput>? orderBy,
    TagWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<TagScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstTagOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstTagOrThrow',
    );
    final future = query(TagScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Tag.fromJson(json.cast<String, dynamic>())
            : throw Exception('Not found TypeRefType.string(value: Tag)'));
    return TagFluent<Tag>(
      future,
      query,
    );
  }

  Future<Iterable<Tag>> findMany({
    TagWhereInput? where,
    Iterable<TagOrderByWithRelationInput>? orderBy,
    TagWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<TagScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManyTag',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManyTag',
    );
    final fields = TagScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManyTag) =>
        findManyTag.map((Map findManyTag) => Tag.fromJson(findManyTag.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  TagFluent<Tag> create({required TagCreateInput data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOneTag',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOneTag',
    );
    final future = query(TagScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Tag.fromJson(json.cast<String, dynamic>())
            : throw Exception('Not found TypeRefType.string(value: Tag)'));
    return TagFluent<Tag>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<TagCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManyTag',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManyTag',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManyTag) =>
        AffectedRowsOutput.fromJson(createManyTag.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  TagFluent<Tag?> update({
    required TagUpdateInput data,
    required TagWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOneTag',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOneTag',
    );
    final future = query(TagScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Tag.fromJson(json.cast<String, dynamic>()) : null);
    return TagFluent<Tag?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required TagUpdateManyMutationInput data,
    TagWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManyTag',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManyTag',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManyTag) =>
        AffectedRowsOutput.fromJson(updateManyTag.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  TagFluent<Tag> upsert({
    required TagWhereUniqueInput where,
    required TagCreateInput create,
    required TagUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOneTag',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOneTag',
    );
    final future = query(TagScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Tag.fromJson(json.cast<String, dynamic>())
            : throw Exception('Not found TypeRefType.string(value: Tag)'));
    return TagFluent<Tag>(
      future,
      query,
    );
  }

  TagFluent<Tag?> delete({required TagWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOneTag',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOneTag',
    );
    final future = query(TagScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Tag.fromJson(json.cast<String, dynamic>()) : null);
    return TagFluent<Tag?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({TagWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManyTag',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManyTag',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManyTag) =>
        AffectedRowsOutput.fromJson(deleteManyTag.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateTag aggregate({
    TagWhereInput? where,
    Iterable<TagOrderByWithRelationInput>? orderBy,
    TagWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregateTag',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregateTag',
    );
    return AggregateTag(query);
  }

  Future<Iterable<TagGroupByOutputType>> groupBy({
    TagWhereInput? where,
    Iterable<TagOrderByWithAggregationInput>? orderBy,
    required Iterable<TagScalarFieldEnum> by,
    TagScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupByTag',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupByTag',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupByTag) => groupByTag.map(
        (Map groupByTag) => TagGroupByOutputType.fromJson(groupByTag.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

extension CategoryModelDelegateExtension on _i1.ModelDelegate<Category> {
  CategoryFluent<Category?> findUnique(
      {required CategoryWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueCategory',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueCategory',
    );
    final future = query(CategoryScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Category.fromJson(json.cast<String, dynamic>())
            : null);
    return CategoryFluent<Category?>(
      future,
      query,
    );
  }

  CategoryFluent<Category> findUniqueOrThrow(
      {required CategoryWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueCategoryOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueCategoryOrThrow',
    );
    final future = query(CategoryScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Category.fromJson(json.cast<String, dynamic>())
            : throw Exception('Not found TypeRefType.string(value: Category)'));
    return CategoryFluent<Category>(
      future,
      query,
    );
  }

  CategoryFluent<Category?> findFirst({
    CategoryWhereInput? where,
    Iterable<CategoryOrderByWithRelationInput>? orderBy,
    CategoryWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<CategoryScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstCategory',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstCategory',
    );
    final future = query(CategoryScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Category.fromJson(json.cast<String, dynamic>())
            : null);
    return CategoryFluent<Category?>(
      future,
      query,
    );
  }

  CategoryFluent<Category> findFirstOrThrow({
    CategoryWhereInput? where,
    Iterable<CategoryOrderByWithRelationInput>? orderBy,
    CategoryWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<CategoryScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstCategoryOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstCategoryOrThrow',
    );
    final future = query(CategoryScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Category.fromJson(json.cast<String, dynamic>())
            : throw Exception('Not found TypeRefType.string(value: Category)'));
    return CategoryFluent<Category>(
      future,
      query,
    );
  }

  Future<Iterable<Category>> findMany({
    CategoryWhereInput? where,
    Iterable<CategoryOrderByWithRelationInput>? orderBy,
    CategoryWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<CategoryScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManyCategory',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManyCategory',
    );
    final fields = CategoryScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManyCategory) => findManyCategory.map(
        (Map findManyCategory) => Category.fromJson(findManyCategory.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  CategoryFluent<Category> create({required CategoryCreateInput data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOneCategory',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOneCategory',
    );
    final future = query(CategoryScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Category.fromJson(json.cast<String, dynamic>())
            : throw Exception('Not found TypeRefType.string(value: Category)'));
    return CategoryFluent<Category>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<CategoryCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManyCategory',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManyCategory',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManyCategory) =>
        AffectedRowsOutput.fromJson(createManyCategory.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  CategoryFluent<Category?> update({
    required CategoryUpdateInput data,
    required CategoryWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOneCategory',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOneCategory',
    );
    final future = query(CategoryScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Category.fromJson(json.cast<String, dynamic>())
            : null);
    return CategoryFluent<Category?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required CategoryUpdateManyMutationInput data,
    CategoryWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManyCategory',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManyCategory',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManyCategory) =>
        AffectedRowsOutput.fromJson(updateManyCategory.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  CategoryFluent<Category> upsert({
    required CategoryWhereUniqueInput where,
    required CategoryCreateInput create,
    required CategoryUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOneCategory',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOneCategory',
    );
    final future = query(CategoryScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Category.fromJson(json.cast<String, dynamic>())
            : throw Exception('Not found TypeRefType.string(value: Category)'));
    return CategoryFluent<Category>(
      future,
      query,
    );
  }

  CategoryFluent<Category?> delete({required CategoryWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOneCategory',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOneCategory',
    );
    final future = query(CategoryScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Category.fromJson(json.cast<String, dynamic>())
            : null);
    return CategoryFluent<Category?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({CategoryWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManyCategory',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManyCategory',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManyCategory) =>
        AffectedRowsOutput.fromJson(deleteManyCategory.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateCategory aggregate({
    CategoryWhereInput? where,
    Iterable<CategoryOrderByWithRelationInput>? orderBy,
    CategoryWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregateCategory',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregateCategory',
    );
    return AggregateCategory(query);
  }

  Future<Iterable<CategoryGroupByOutputType>> groupBy({
    CategoryWhereInput? where,
    Iterable<CategoryOrderByWithAggregationInput>? orderBy,
    required Iterable<CategoryScalarFieldEnum> by,
    CategoryScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupByCategory',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupByCategory',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupByCategory) =>
        groupByCategory.map((Map groupByCategory) =>
            CategoryGroupByOutputType.fromJson(groupByCategory.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

@_i1.jsonSerializable
class TaskGroupByOutputType implements _i1.JsonSerializable {
  const TaskGroupByOutputType({
    this.id,
    this.uuid,
    this.title,
    this.status,
    this.categoryId,
    this.updateAt,
    this.syncAt,
    this.deleteAt,
  });

  factory TaskGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$TaskGroupByOutputTypeFromJson(json);

  final int? id;

  final String? uuid;

  final String? title;

  final bool? status;

  final int? categoryId;

  final BigInt? updateAt;

  final BigInt? syncAt;

  final BigInt? deleteAt;

  @override
  Map<String, dynamic> toJson() => _$TaskGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class TagGroupByOutputType implements _i1.JsonSerializable {
  const TagGroupByOutputType({
    this.id,
    this.name,
    this.color,
    this.updateAt,
    this.syncAt,
    this.deleteAt,
  });

  factory TagGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$TagGroupByOutputTypeFromJson(json);

  final int? id;

  final String? name;

  final int? color;

  final BigInt? updateAt;

  final BigInt? syncAt;

  final BigInt? deleteAt;

  @override
  Map<String, dynamic> toJson() => _$TagGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class CategoryGroupByOutputType implements _i1.JsonSerializable {
  const CategoryGroupByOutputType({
    this.id,
    this.name,
    this.color,
    this.updateAt,
    this.syncAt,
    this.deleteAt,
  });

  factory CategoryGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$CategoryGroupByOutputTypeFromJson(json);

  final int? id;

  final String? name;

  final int? color;

  final BigInt? updateAt;

  final BigInt? syncAt;

  final BigInt? deleteAt;

  @override
  Map<String, dynamic> toJson() => _$CategoryGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class AffectedRowsOutput implements _i1.JsonSerializable {
  const AffectedRowsOutput({this.count});

  factory AffectedRowsOutput.fromJson(Map<String, dynamic> json) =>
      _$AffectedRowsOutputFromJson(json);

  final int? count;

  @override
  Map<String, dynamic> toJson() => _$AffectedRowsOutputToJson(this);
}

class AggregateTask {
  const AggregateTask(this.$query);

  final _i1.PrismaFluentQuery $query;

  TaskCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return TaskCountAggregateOutputType(query);
  }

  TaskAvgAggregateOutputType $avg() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_avg',
          fields: fields,
        )
      ]),
      key: r'_avg',
    );
    return TaskAvgAggregateOutputType(query);
  }

  TaskSumAggregateOutputType $sum() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_sum',
          fields: fields,
        )
      ]),
      key: r'_sum',
    );
    return TaskSumAggregateOutputType(query);
  }

  TaskMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return TaskMinAggregateOutputType(query);
  }

  TaskMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return TaskMaxAggregateOutputType(query);
  }
}

class AggregateTag {
  const AggregateTag(this.$query);

  final _i1.PrismaFluentQuery $query;

  TagCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return TagCountAggregateOutputType(query);
  }

  TagAvgAggregateOutputType $avg() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_avg',
          fields: fields,
        )
      ]),
      key: r'_avg',
    );
    return TagAvgAggregateOutputType(query);
  }

  TagSumAggregateOutputType $sum() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_sum',
          fields: fields,
        )
      ]),
      key: r'_sum',
    );
    return TagSumAggregateOutputType(query);
  }

  TagMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return TagMinAggregateOutputType(query);
  }

  TagMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return TagMaxAggregateOutputType(query);
  }
}

class AggregateCategory {
  const AggregateCategory(this.$query);

  final _i1.PrismaFluentQuery $query;

  CategoryCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return CategoryCountAggregateOutputType(query);
  }

  CategoryAvgAggregateOutputType $avg() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_avg',
          fields: fields,
        )
      ]),
      key: r'_avg',
    );
    return CategoryAvgAggregateOutputType(query);
  }

  CategorySumAggregateOutputType $sum() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_sum',
          fields: fields,
        )
      ]),
      key: r'_sum',
    );
    return CategorySumAggregateOutputType(query);
  }

  CategoryMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return CategoryMinAggregateOutputType(query);
  }

  CategoryMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return CategoryMaxAggregateOutputType(query);
  }
}

class TaskCountOutputType {
  const TaskCountOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> tags() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'tags',
          fields: fields,
        )
      ]),
      key: r'tags',
    );
    return query(const []).then((value) => (value as int));
  }
}

class TaskCountAggregateOutputType {
  const TaskCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> uuid() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'uuid',
          fields: fields,
        )
      ]),
      key: r'uuid',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> title() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'title',
          fields: fields,
        )
      ]),
      key: r'title',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> status() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'status',
          fields: fields,
        )
      ]),
      key: r'status',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> categoryId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'categoryId',
          fields: fields,
        )
      ]),
      key: r'categoryId',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> updateAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'updateAt',
          fields: fields,
        )
      ]),
      key: r'updateAt',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> syncAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'syncAt',
          fields: fields,
        )
      ]),
      key: r'syncAt',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> deleteAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'deleteAt',
          fields: fields,
        )
      ]),
      key: r'deleteAt',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class TaskAvgAggregateOutputType {
  const TaskAvgAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<double?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> categoryId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'categoryId',
          fields: fields,
        )
      ]),
      key: r'categoryId',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> updateAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'updateAt',
          fields: fields,
        )
      ]),
      key: r'updateAt',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> syncAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'syncAt',
          fields: fields,
        )
      ]),
      key: r'syncAt',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> deleteAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'deleteAt',
          fields: fields,
        )
      ]),
      key: r'deleteAt',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class TaskSumAggregateOutputType {
  const TaskSumAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> categoryId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'categoryId',
          fields: fields,
        )
      ]),
      key: r'categoryId',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<BigInt?> updateAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'updateAt',
          fields: fields,
        )
      ]),
      key: r'updateAt',
    );
    return query(const []).then((value) => (value as BigInt?));
  }

  Future<BigInt?> syncAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'syncAt',
          fields: fields,
        )
      ]),
      key: r'syncAt',
    );
    return query(const []).then((value) => (value as BigInt?));
  }

  Future<BigInt?> deleteAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'deleteAt',
          fields: fields,
        )
      ]),
      key: r'deleteAt',
    );
    return query(const []).then((value) => (value as BigInt?));
  }
}

class TaskMinAggregateOutputType {
  const TaskMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> uuid() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'uuid',
          fields: fields,
        )
      ]),
      key: r'uuid',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> title() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'title',
          fields: fields,
        )
      ]),
      key: r'title',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<bool?> status() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'status',
          fields: fields,
        )
      ]),
      key: r'status',
    );
    return query(const []).then((value) => (value as bool?));
  }

  Future<int?> categoryId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'categoryId',
          fields: fields,
        )
      ]),
      key: r'categoryId',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<BigInt?> updateAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'updateAt',
          fields: fields,
        )
      ]),
      key: r'updateAt',
    );
    return query(const []).then((value) => (value as BigInt?));
  }

  Future<BigInt?> syncAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'syncAt',
          fields: fields,
        )
      ]),
      key: r'syncAt',
    );
    return query(const []).then((value) => (value as BigInt?));
  }

  Future<BigInt?> deleteAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'deleteAt',
          fields: fields,
        )
      ]),
      key: r'deleteAt',
    );
    return query(const []).then((value) => (value as BigInt?));
  }
}

class TaskMaxAggregateOutputType {
  const TaskMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> uuid() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'uuid',
          fields: fields,
        )
      ]),
      key: r'uuid',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> title() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'title',
          fields: fields,
        )
      ]),
      key: r'title',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<bool?> status() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'status',
          fields: fields,
        )
      ]),
      key: r'status',
    );
    return query(const []).then((value) => (value as bool?));
  }

  Future<int?> categoryId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'categoryId',
          fields: fields,
        )
      ]),
      key: r'categoryId',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<BigInt?> updateAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'updateAt',
          fields: fields,
        )
      ]),
      key: r'updateAt',
    );
    return query(const []).then((value) => (value as BigInt?));
  }

  Future<BigInt?> syncAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'syncAt',
          fields: fields,
        )
      ]),
      key: r'syncAt',
    );
    return query(const []).then((value) => (value as BigInt?));
  }

  Future<BigInt?> deleteAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'deleteAt',
          fields: fields,
        )
      ]),
      key: r'deleteAt',
    );
    return query(const []).then((value) => (value as BigInt?));
  }
}

class TagCountOutputType {
  const TagCountOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> tasks() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'tasks',
          fields: fields,
        )
      ]),
      key: r'tasks',
    );
    return query(const []).then((value) => (value as int));
  }
}

class TagCountAggregateOutputType {
  const TagCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> name() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'name',
          fields: fields,
        )
      ]),
      key: r'name',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> color() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'color',
          fields: fields,
        )
      ]),
      key: r'color',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> updateAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'updateAt',
          fields: fields,
        )
      ]),
      key: r'updateAt',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> syncAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'syncAt',
          fields: fields,
        )
      ]),
      key: r'syncAt',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> deleteAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'deleteAt',
          fields: fields,
        )
      ]),
      key: r'deleteAt',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class TagAvgAggregateOutputType {
  const TagAvgAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<double?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> color() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'color',
          fields: fields,
        )
      ]),
      key: r'color',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> updateAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'updateAt',
          fields: fields,
        )
      ]),
      key: r'updateAt',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> syncAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'syncAt',
          fields: fields,
        )
      ]),
      key: r'syncAt',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> deleteAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'deleteAt',
          fields: fields,
        )
      ]),
      key: r'deleteAt',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class TagSumAggregateOutputType {
  const TagSumAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> color() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'color',
          fields: fields,
        )
      ]),
      key: r'color',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<BigInt?> updateAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'updateAt',
          fields: fields,
        )
      ]),
      key: r'updateAt',
    );
    return query(const []).then((value) => (value as BigInt?));
  }

  Future<BigInt?> syncAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'syncAt',
          fields: fields,
        )
      ]),
      key: r'syncAt',
    );
    return query(const []).then((value) => (value as BigInt?));
  }

  Future<BigInt?> deleteAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'deleteAt',
          fields: fields,
        )
      ]),
      key: r'deleteAt',
    );
    return query(const []).then((value) => (value as BigInt?));
  }
}

class TagMinAggregateOutputType {
  const TagMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> name() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'name',
          fields: fields,
        )
      ]),
      key: r'name',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<int?> color() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'color',
          fields: fields,
        )
      ]),
      key: r'color',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<BigInt?> updateAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'updateAt',
          fields: fields,
        )
      ]),
      key: r'updateAt',
    );
    return query(const []).then((value) => (value as BigInt?));
  }

  Future<BigInt?> syncAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'syncAt',
          fields: fields,
        )
      ]),
      key: r'syncAt',
    );
    return query(const []).then((value) => (value as BigInt?));
  }

  Future<BigInt?> deleteAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'deleteAt',
          fields: fields,
        )
      ]),
      key: r'deleteAt',
    );
    return query(const []).then((value) => (value as BigInt?));
  }
}

class TagMaxAggregateOutputType {
  const TagMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> name() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'name',
          fields: fields,
        )
      ]),
      key: r'name',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<int?> color() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'color',
          fields: fields,
        )
      ]),
      key: r'color',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<BigInt?> updateAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'updateAt',
          fields: fields,
        )
      ]),
      key: r'updateAt',
    );
    return query(const []).then((value) => (value as BigInt?));
  }

  Future<BigInt?> syncAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'syncAt',
          fields: fields,
        )
      ]),
      key: r'syncAt',
    );
    return query(const []).then((value) => (value as BigInt?));
  }

  Future<BigInt?> deleteAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'deleteAt',
          fields: fields,
        )
      ]),
      key: r'deleteAt',
    );
    return query(const []).then((value) => (value as BigInt?));
  }
}

class CategoryCountOutputType {
  const CategoryCountOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> tasks() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'tasks',
          fields: fields,
        )
      ]),
      key: r'tasks',
    );
    return query(const []).then((value) => (value as int));
  }
}

class CategoryCountAggregateOutputType {
  const CategoryCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> name() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'name',
          fields: fields,
        )
      ]),
      key: r'name',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> color() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'color',
          fields: fields,
        )
      ]),
      key: r'color',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> updateAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'updateAt',
          fields: fields,
        )
      ]),
      key: r'updateAt',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> syncAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'syncAt',
          fields: fields,
        )
      ]),
      key: r'syncAt',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> deleteAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'deleteAt',
          fields: fields,
        )
      ]),
      key: r'deleteAt',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class CategoryAvgAggregateOutputType {
  const CategoryAvgAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<double?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> color() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'color',
          fields: fields,
        )
      ]),
      key: r'color',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> updateAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'updateAt',
          fields: fields,
        )
      ]),
      key: r'updateAt',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> syncAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'syncAt',
          fields: fields,
        )
      ]),
      key: r'syncAt',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> deleteAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'deleteAt',
          fields: fields,
        )
      ]),
      key: r'deleteAt',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class CategorySumAggregateOutputType {
  const CategorySumAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> color() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'color',
          fields: fields,
        )
      ]),
      key: r'color',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<BigInt?> updateAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'updateAt',
          fields: fields,
        )
      ]),
      key: r'updateAt',
    );
    return query(const []).then((value) => (value as BigInt?));
  }

  Future<BigInt?> syncAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'syncAt',
          fields: fields,
        )
      ]),
      key: r'syncAt',
    );
    return query(const []).then((value) => (value as BigInt?));
  }

  Future<BigInt?> deleteAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'deleteAt',
          fields: fields,
        )
      ]),
      key: r'deleteAt',
    );
    return query(const []).then((value) => (value as BigInt?));
  }
}

class CategoryMinAggregateOutputType {
  const CategoryMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> name() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'name',
          fields: fields,
        )
      ]),
      key: r'name',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<int?> color() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'color',
          fields: fields,
        )
      ]),
      key: r'color',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<BigInt?> updateAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'updateAt',
          fields: fields,
        )
      ]),
      key: r'updateAt',
    );
    return query(const []).then((value) => (value as BigInt?));
  }

  Future<BigInt?> syncAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'syncAt',
          fields: fields,
        )
      ]),
      key: r'syncAt',
    );
    return query(const []).then((value) => (value as BigInt?));
  }

  Future<BigInt?> deleteAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'deleteAt',
          fields: fields,
        )
      ]),
      key: r'deleteAt',
    );
    return query(const []).then((value) => (value as BigInt?));
  }
}

class CategoryMaxAggregateOutputType {
  const CategoryMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> name() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'name',
          fields: fields,
        )
      ]),
      key: r'name',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<int?> color() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'color',
          fields: fields,
        )
      ]),
      key: r'color',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<BigInt?> updateAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'updateAt',
          fields: fields,
        )
      ]),
      key: r'updateAt',
    );
    return query(const []).then((value) => (value as BigInt?));
  }

  Future<BigInt?> syncAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'syncAt',
          fields: fields,
        )
      ]),
      key: r'syncAt',
    );
    return query(const []).then((value) => (value as BigInt?));
  }

  Future<BigInt?> deleteAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'deleteAt',
          fields: fields,
        )
      ]),
      key: r'deleteAt',
    );
    return query(const []).then((value) => (value as BigInt?));
  }
}

@JsonSerializable(
  createFactory: false,
  createToJson: true,
  includeIfNull: false,
)
class Datasources implements _i1.JsonSerializable {
  const Datasources({this.db});

  final String? db;

  @override
  Map<String, dynamic> toJson() => _$DatasourcesToJson(this);
}

class PrismaClient extends _i1.BasePrismaClient<PrismaClient> {
  PrismaClient._internal(
    _i3.Engine engine, {
    _i3.QueryEngineRequestHeaders? headers,
    _i3.TransactionInfo? transaction,
  })  : _engine = engine,
        _headers = headers,
        _transaction = transaction,
        super(
          engine,
          headers: headers,
          transaction: transaction,
        );

  factory PrismaClient({
    Datasources? datasources,
    Iterable<_i4.Event>? stdout,
    Iterable<_i4.Event>? event,
  }) {
    final logger = _i4.Logger(
      stdout: stdout,
      event: event,
    );
    final engine = _i5.BinaryEngine(
      logger: logger,
      schema:
          r'Ly8gVGhpcyBpcyB5b3VyIFByaXNtYSBzY2hlbWEgZmlsZSwKLy8gbGVhcm4gbW9yZSBhYm91dCBpdCBpbiB0aGUgZG9jczogaHR0cHM6Ly9wcmlzLmx5L2QvcHJpc21hLXNjaGVtYQoKZ2VuZXJhdG9yIGNsaWVudCB7CiAgcHJvdmlkZXIgPSAiZGFydCBydW4gb3JtIgp9CgpkYXRhc291cmNlIGRiIHsKICBwcm92aWRlciA9ICJwb3N0Z3Jlc3FsIgogIHVybCAgICAgID0gZW52KCJEQVRBQkFTRV9VUkwiKQp9Cgptb2RlbCBUYXNrIHsKICAgIGlkICAgICAgICAgIEludCAgICAgIEBpZCBAZGVmYXVsdChhdXRvaW5jcmVtZW50KCkpCiAgICB1dWlkICAgICAgICBTdHJpbmcKICAgIHRpdGxlICAgICAgIFN0cmluZwogICAgc3RhdHVzICAgICAgQm9vbGVhbgogICAgY2F0ZWdvcnlJZCAgSW50CgogICAgdXBkYXRlQXQgICAgQmlnSW50CiAgICBzeW5jQXQgICAgICBCaWdJbnQKICAgIGRlbGV0ZUF0ICAgIEJpZ0ludAoKICAgIHRhZ3MgICAgICAgIFRhZ1tdICAgLy8g5byx5YWz6IGUCiAgICBjYXRlZ29yeSAgICBDYXRlZ29yeSBAcmVsYXRpb24oZmllbGRzOiBbY2F0ZWdvcnlJZF0sIHJlZmVyZW5jZXM6IFtpZF0pICAvLyDlvLrlhbPogZQKCiAgICBAQHVuaXF1ZShbdXVpZF0pCn0KCm1vZGVsIFRhZyB7CiAgICBpZCAgICAgICAgICBJbnQgICAgICBAaWQgQGRlZmF1bHQoYXV0b2luY3JlbWVudCgpKQogICAgbmFtZSAgICAgICAgU3RyaW5nCiAgICBjb2xvciAgICAgICBJbnQKCiAgICB1cGRhdGVBdCAgICBCaWdJbnQKICAgIHN5bmNBdCAgICAgIEJpZ0ludAogICAgZGVsZXRlQXQgICAgQmlnSW50CgogICAgdGFza3MgICAgICAgVGFza1tdCgogICAgQEB1bmlxdWUoW25hbWVdKQp9Cgptb2RlbCBDYXRlZ29yeSB7CiAgICBpZCAgICAgICAgICBJbnQgICAgICBAaWQgQGRlZmF1bHQoYXV0b2luY3JlbWVudCgpKQogICAgbmFtZSAgICAgICAgU3RyaW5nCiAgICBjb2xvciAgICAgICBJbnQKCiAgICB1cGRhdGVBdCAgICBCaWdJbnQKICAgIHN5bmNBdCAgICAgIEJpZ0ludAogICAgZGVsZXRlQXQgICAgQmlnSW50CgogICAgdGFza3MgICAgICAgVGFza1tdCgogICAgQEB1bmlxdWUoW25hbWVdKQp9Cg==',
      datasources: datasources?.toJson().cast() ?? const {},
      executable:
          r'/Users/linloir/Dev/sync_demo/server/node_modules/prisma/query-engine-darwin-arm64',
    );
    return PrismaClient._internal(engine);
  }

  final _i3.Engine _engine;

  final _i3.QueryEngineRequestHeaders? _headers;

  final _i3.TransactionInfo? _transaction;

  @override
  PrismaClient copyWith({
    _i3.QueryEngineRequestHeaders? headers,
    _i3.TransactionInfo? transaction,
  }) =>
      PrismaClient._internal(
        _engine,
        headers: headers ?? _headers,
        transaction: transaction ?? _transaction,
      );
  _i1.ModelDelegate<Task> get task => _i1.ModelDelegate<Task>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );
  _i1.ModelDelegate<Tag> get tag => _i1.ModelDelegate<Tag>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );
  _i1.ModelDelegate<Category> get category => _i1.ModelDelegate<Category>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );
}
