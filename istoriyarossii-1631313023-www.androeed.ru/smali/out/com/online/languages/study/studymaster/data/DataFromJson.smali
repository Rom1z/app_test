.class public Lcom/online/languages/study/studymaster/data/DataFromJson;
.super Ljava/lang/Object;
.source "DataFromJson.java"


# instance fields
.field private categoryFile:Ljava/lang/String;

.field context:Landroid/content/Context;

.field public data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field private dataNode:Ljava/lang/String;

.field private navStructureFile:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataFromJson;->data:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/DataFromJson;->context:Landroid/content/Context;

    const v0, 0x7f11001f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/DataFromJson;->categoryFile:Ljava/lang/String;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/data/DataFromJson;->context:Landroid/content/Context;

    const v0, 0x7f110029

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/DataFromJson;->navStructureFile:Ljava/lang/String;

    const-string p1, "data"

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/DataFromJson;->dataNode:Ljava/lang/String;

    return-void
.end method

.method private getDataInfoFromJson(Lorg/json/JSONObject;)Lcom/online/languages/study/studymaster/data/DataItem;
    .registers 9

    const-string v0, "mode"

    const-string v1, "filter"

    const-string v2, "divider"

    const-string v3, "item_info_1"

    const-string v4, "image"

    new-instance v5, Lcom/online/languages/study/studymaster/data/DataItem;

    invoke-direct {v5}, Lcom/online/languages/study/studymaster/data/DataItem;-><init>()V

    :try_start_f
    const-string v6, "id"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/online/languages/study/studymaster/data/DataItem;->id:Ljava/lang/String;

    const-string v6, "item"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/online/languages/study/studymaster/data/DataItem;->item:Ljava/lang/String;

    const-string v6, "info"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/online/languages/study/studymaster/data/DataItem;->info:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_34

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/online/languages/study/studymaster/data/DataItem;->divider:Ljava/lang/String;

    goto :goto_38

    :cond_34
    const-string v2, "no"

    iput-object v2, v5, Lcom/online/languages/study/studymaster/data/DataItem;->divider:Ljava/lang/String;

    :goto_38
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/online/languages/study/studymaster/data/DataItem;->filter:Ljava/lang/String;

    goto :goto_49

    :cond_45
    const-string v1, ""

    iput-object v1, v5, Lcom/online/languages/study/studymaster/data/DataItem;->filter:Ljava/lang/String;

    :goto_49
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1
    :try_end_4d
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_4d} :catch_af

    const-string v2, "none"

    if-eqz v1, :cond_65

    :try_start_51
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    iput-object v2, v5, Lcom/online/languages/study/studymaster/data/DataItem;->image:Ljava/lang/String;

    goto :goto_7a

    :cond_5e
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/online/languages/study/studymaster/data/DataItem;->image:Ljava/lang/String;

    goto :goto_7a

    :cond_65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v5, Lcom/online/languages/study/studymaster/data/DataItem;->id:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".jpg"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/online/languages/study/studymaster/data/DataItem;->image:Ljava/lang/String;

    :goto_7a
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_96

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8f

    iget-object v1, v5, Lcom/online/languages/study/studymaster/data/DataItem;->item:Ljava/lang/String;

    iput-object v1, v5, Lcom/online/languages/study/studymaster/data/DataItem;->item_info_1:Ljava/lang/String;

    goto :goto_9a

    :cond_8f
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/online/languages/study/studymaster/data/DataItem;->item_info_1:Ljava/lang/String;

    goto :goto_9a

    :cond_96
    iget-object v1, v5, Lcom/online/languages/study/studymaster/data/DataItem;->item:Ljava/lang/String;

    iput-object v1, v5, Lcom/online/languages/study/studymaster/data/DataItem;->item_info_1:Ljava/lang/String;

    :goto_9a
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ab

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v5, Lcom/online/languages/study/studymaster/data/DataItem;->mode:I

    goto :goto_b3

    :cond_ab
    const/4 p1, 0x0

    iput p1, v5, Lcom/online/languages/study/studymaster/data/DataItem;->mode:I
    :try_end_ae
    .catch Lorg/json/JSONException; {:try_start_51 .. :try_end_ae} :catch_af

    goto :goto_b3

    :catch_af
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_b3
    return-object v5
.end method

.method private getListFromFile(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/data/DataFromJson;->loadJSONFromAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    :cond_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    :goto_23
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_12

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/online/languages/study/studymaster/data/DataItem;

    invoke-direct {v5}, Lcom/online/languages/study/studymaster/data/DataItem;-><init>()V

    iput-object v4, v5, Lcom/online/languages/study/studymaster/data/DataItem;->id:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3d
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_3d} :catch_40

    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :catch_40
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_44
    return-object v0
.end method

.method private getNavSectionInfoFromJson(Lorg/json/JSONObject;)Lcom/online/languages/study/studymaster/data/NavSection;
    .registers 18

    move-object/from16 v0, p1

    const-string v1, "param"

    const-string v2, "review"

    const-string v3, "categories"

    const-string v4, "unlocked"

    const-string v5, "id"

    const-string v6, "title"

    const-string v7, "type"

    const-string v8, "image"

    const-string v9, "desc"

    const-string v10, "spec"

    new-instance v11, Lcom/online/languages/study/studymaster/data/NavSection;

    invoke-direct {v11}, Lcom/online/languages/study/studymaster/data/NavSection;-><init>()V

    :try_start_1b
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/online/languages/study/studymaster/data/NavSection;->title:Ljava/lang/String;

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/online/languages/study/studymaster/data/NavSection;->desc:Ljava/lang/String;

    const-string v12, "title_short"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/online/languages/study/studymaster/data/NavSection;->title_short:Ljava/lang/String;

    const-string v12, "desc_short"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/online/languages/study/studymaster/data/NavSection;->desc_short:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/online/languages/study/studymaster/data/NavSection;->id:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/online/languages/study/studymaster/data/NavSection;->image:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12
    :try_end_47
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_47} :catch_14e

    const-string v13, "false"

    if-eqz v12, :cond_58

    :try_start_4b
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_56

    goto :goto_58

    :cond_56
    const/4 v4, 0x0

    goto :goto_59

    :cond_58
    :goto_58
    const/4 v4, 0x1

    :goto_59
    iput-boolean v4, v11, Lcom/online/languages/study/studymaster/data/NavSection;->unlocked:Z

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4
    :try_end_5f
    .catch Lorg/json/JSONException; {:try_start_4b .. :try_end_5f} :catch_14e

    const-string v12, ""

    if-eqz v4, :cond_6a

    :try_start_63
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v11, Lcom/online/languages/study/studymaster/data/NavSection;->spec:Ljava/lang/String;

    goto :goto_6c

    :cond_6a
    iput-object v12, v11, Lcom/online/languages/study/studymaster/data/NavSection;->spec:Ljava/lang/String;

    :goto_6c
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_79

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v11, Lcom/online/languages/study/studymaster/data/NavSection;->type:Ljava/lang/String;

    goto :goto_7b

    :cond_79
    iput-object v12, v11, Lcom/online/languages/study/studymaster/data/NavSection;->type:Ljava/lang/String;

    :goto_7b
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_152

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const/4 v4, 0x0

    :goto_8b
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v4, v14, :cond_152

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    new-instance v15, Lcom/online/languages/study/studymaster/data/NavCategory;

    invoke-direct {v15}, Lcom/online/languages/study/studymaster/data/NavCategory;-><init>()V

    move-object/from16 p1, v0

    const-string v0, "parent"

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lcom/online/languages/study/studymaster/data/NavCategory;->parent:Ljava/lang/String;

    invoke-virtual {v14, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lcom/online/languages/study/studymaster/data/NavCategory;->type:Ljava/lang/String;

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lcom/online/languages/study/studymaster/data/NavCategory;->id:Ljava/lang/String;

    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lcom/online/languages/study/studymaster/data/NavCategory;->title:Ljava/lang/String;

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c9

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c7

    goto :goto_c9

    :cond_c7
    const/4 v0, 0x0

    goto :goto_ca

    :cond_c9
    :goto_c9
    const/4 v0, 0x1

    :goto_ca
    iput-boolean v0, v15, Lcom/online/languages/study/studymaster/data/NavCategory;->review:Z

    iget-object v0, v11, Lcom/online/languages/study/studymaster/data/NavSection;->navCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, v11, Lcom/online/languages/study/studymaster/data/NavSection;->unlocked:Z

    iput-boolean v0, v15, Lcom/online/languages/study/studymaster/data/NavCategory;->unlocked:Z

    invoke-virtual {v14, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e2

    invoke-virtual {v14, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lcom/online/languages/study/studymaster/data/NavCategory;->desc:Ljava/lang/String;

    goto :goto_e4

    :cond_e2
    iput-object v12, v15, Lcom/online/languages/study/studymaster/data/NavCategory;->desc:Ljava/lang/String;

    :goto_e4
    invoke-virtual {v14, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f1

    invoke-virtual {v14, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lcom/online/languages/study/studymaster/data/NavCategory;->spec:Ljava/lang/String;

    goto :goto_f3

    :cond_f1
    iput-object v12, v15, Lcom/online/languages/study/studymaster/data/NavCategory;->spec:Ljava/lang/String;

    :goto_f3
    invoke-virtual {v14, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_100

    invoke-virtual {v14, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lcom/online/languages/study/studymaster/data/NavCategory;->image:Ljava/lang/String;

    goto :goto_102

    :cond_100
    iput-object v12, v15, Lcom/online/languages/study/studymaster/data/NavCategory;->image:Ljava/lang/String;

    :goto_102
    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10f

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lcom/online/languages/study/studymaster/data/NavCategory;->param:Ljava/lang/String;

    goto :goto_111

    :cond_10f
    iput-object v12, v15, Lcom/online/languages/study/studymaster/data/NavCategory;->param:Ljava/lang/String;

    :goto_111
    iget-object v0, v15, Lcom/online/languages/study/studymaster/data/NavCategory;->type:Ljava/lang/String;

    const-string v14, "group"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_148

    iget-object v0, v15, Lcom/online/languages/study/studymaster/data/NavCategory;->type:Ljava/lang/String;

    const-string v14, "set"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_148

    iget-object v0, v15, Lcom/online/languages/study/studymaster/data/NavCategory;->type:Ljava/lang/String;

    const-string v14, "page"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_148

    iget-object v0, v15, Lcom/online/languages/study/studymaster/data/NavCategory;->id:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_148

    iget-object v0, v11, Lcom/online/languages/study/studymaster/data/NavSection;->uniqueCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v11, Lcom/online/languages/study/studymaster/data/NavSection;->catIdList:Ljava/util/ArrayList;

    iget-object v14, v15, Lcom/online/languages/study/studymaster/data/NavCategory;->id:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v15, Lcom/online/languages/study/studymaster/data/NavCategory;->id:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_148
    .catch Lorg/json/JSONException; {:try_start_63 .. :try_end_148} :catch_14e

    :cond_148
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p1

    goto/16 :goto_8b

    :catch_14e
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_152
    return-object v11
.end method

.method private getSectionInfoFromJson(Lorg/json/JSONObject;)Lcom/online/languages/study/studymaster/data/Section;
    .registers 10

    const-string v0, "categories"

    const-string v1, "id"

    const-string v2, "title"

    new-instance v3, Lcom/online/languages/study/studymaster/data/Section;

    invoke-direct {v3}, Lcom/online/languages/study/studymaster/data/Section;-><init>()V

    :try_start_b
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/online/languages/study/studymaster/data/Section;->title:Ljava/lang/String;

    const-string v4, "desc"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/online/languages/study/studymaster/data/Section;->desc:Ljava/lang/String;

    const-string v4, "title_short"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/online/languages/study/studymaster/data/Section;->title_short:Ljava/lang/String;

    const-string v4, "desc_short"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/online/languages/study/studymaster/data/Section;->desc_short:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/online/languages/study/studymaster/data/Section;->id:Ljava/lang/String;

    const-string v4, "tag"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/online/languages/study/studymaster/data/Section;->tag:Ljava/lang/String;

    const-string v4, "image"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/online/languages/study/studymaster/data/Section;->image:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6d

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    :goto_4a
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_6d

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, v3, Lcom/online/languages/study/studymaster/data/Section;->categories:Ljava/util/ArrayList;

    new-instance v6, Lcom/online/languages/study/studymaster/data/Category;

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v7, v4}, Lcom/online/languages/study/studymaster/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_66
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_66} :catch_69

    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    :catch_69
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_6d
    return-object v3
.end method

.method private getUniqueCatsFromJson(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/NavCategory;",
            ">;"
        }
    .end annotation

    const-string v0, "spec"

    const-string v1, "review"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_10
    :try_start_10
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_93

    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "categories"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const/4 v7, 0x0

    :goto_21
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_8c

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    new-instance v9, Lcom/online/languages/study/studymaster/data/NavCategory;

    invoke-direct {v9}, Lcom/online/languages/study/studymaster/data/NavCategory;-><init>()V

    const-string v10, "type"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/online/languages/study/studymaster/data/NavCategory;->type:Ljava/lang/String;

    const-string v10, "id"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/online/languages/study/studymaster/data/NavCategory;->id:Ljava/lang/String;

    const-string v10, "title"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/online/languages/study/studymaster/data/NavCategory;->title:Ljava/lang/String;

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5d

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "false"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5b

    goto :goto_5d

    :cond_5b
    const/4 v10, 0x0

    goto :goto_5e

    :cond_5d
    :goto_5d
    const/4 v10, 0x1

    :goto_5e
    iput-boolean v10, v9, Lcom/online/languages/study/studymaster/data/NavCategory;->review:Z

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6b

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_6d

    :cond_6b
    const-string v8, ""

    :goto_6d
    iput-object v8, v9, Lcom/online/languages/study/studymaster/data/NavCategory;->spec:Ljava/lang/String;

    iget-object v8, v9, Lcom/online/languages/study/studymaster/data/NavCategory;->type:Ljava/lang/String;

    const-string v10, "group"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_89

    iget-object v8, v9, Lcom/online/languages/study/studymaster/data/NavCategory;->id:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_89

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, v9, Lcom/online/languages/study/studymaster/data/NavCategory;->id:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_89
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_89} :catch_8f

    :cond_89
    add-int/lit8 v7, v7, 0x1

    goto :goto_21

    :cond_8c
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :catch_8f
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_93
    return-object v2
.end method

.method private loadJSONFromAsset(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/DataFromJson;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    new-instance p1, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {p1, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1d} :catch_1e

    return-object p1

    :catch_1e
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getAllData()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/data/DataFromJson;->categoryFile:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/online/languages/study/studymaster/data/DataFromJson;->loadJSONFromAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/online/languages/study/studymaster/data/DataFromJson;->dataNode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    :goto_17
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2f

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/online/languages/study/studymaster/data/DataFromJson;->getDataInfoFromJson(Lorg/json/JSONObject;)Lcom/online/languages/study/studymaster/data/DataItem;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_28} :catch_2b

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :catch_2b
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2f
    return-object v0
.end method

.method public getAllItemsList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/DataFromJson;->categoryFile:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/data/DataFromJson;->getListFromFile(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAllUniqueCats()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/NavCategory;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/data/DataFromJson;->navStructureFile:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/online/languages/study/studymaster/data/DataFromJson;->loadJSONFromAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "sections"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/online/languages/study/studymaster/data/DataFromJson;->getUniqueCatsFromJson(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1a} :catch_1b

    goto :goto_1f

    :catch_1b
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1f
    return-object v0
.end method

.method getCatDataByTag(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/data/DataFromJson;->categoryFile:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/online/languages/study/studymaster/data/DataFromJson;->loadJSONFromAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/online/languages/study/studymaster/data/DataFromJson;->dataNode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    :goto_17
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4c

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-direct {p0, v3}, Lcom/online/languages/study/studymaster/data/DataFromJson;->getDataInfoFromJson(Lorg/json/JSONObject;)Lcom/online/languages/study/studymaster/data/DataItem;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_45
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_45} :catch_48

    :cond_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :catch_48
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_4c
    return-object v0
.end method

.method public getDataItemById(Ljava/lang/String;)Lcom/online/languages/study/studymaster/data/DataItem;
    .registers 7

    new-instance v0, Lcom/online/languages/study/studymaster/data/DataItem;

    invoke-direct {v0}, Lcom/online/languages/study/studymaster/data/DataItem;-><init>()V

    :try_start_5
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/data/DataFromJson;->categoryFile:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/online/languages/study/studymaster/data/DataFromJson;->loadJSONFromAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/online/languages/study/studymaster/data/DataFromJson;->dataNode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    :goto_17
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_38

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-direct {p0, v3}, Lcom/online/languages/study/studymaster/data/DataFromJson;->getDataInfoFromJson(Lorg/json/JSONObject;)Lcom/online/languages/study/studymaster/data/DataItem;

    move-result-object v0
    :try_end_31
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_31} :catch_34

    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :catch_34
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_38
    return-object v0
.end method

.method public getItemsFromAllFiles()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/data/DataFromJson;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_22

    aget-object v4, v1, v3

    invoke-direct {p0, v4}, Lcom/online/languages/study/studymaster/data/DataFromJson;->getListFromFile(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_22
    return-object v0
.end method

.method public getParams()Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "stats"

    const-string v1, "gallery"

    const-string v2, "homecards"

    const-string v3, "simplified"

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    :try_start_d
    new-instance v5, Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/online/languages/study/studymaster/data/DataFromJson;->navStructureFile:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/online/languages/study/studymaster/data/DataFromJson;->loadJSONFromAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "params"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_2b

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    goto :goto_2c

    :cond_2b
    const/4 v7, 0x0

    :goto_2c
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_37

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    goto :goto_38

    :cond_37
    const/4 v9, 0x0

    :goto_38
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_42

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    :cond_42
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4c

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    :cond_4c
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_68
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_68} :catch_69

    goto :goto_6d

    :catch_69
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_6d
    return-object v4
.end method

.method public getSectionsList()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/Section;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/data/DataFromJson;->navStructureFile:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/online/languages/study/studymaster/data/DataFromJson;->loadJSONFromAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_11
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_29

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/online/languages/study/studymaster/data/DataFromJson;->getSectionInfoFromJson(Lorg/json/JSONObject;)Lcom/online/languages/study/studymaster/data/Section;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_22} :catch_25

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :catch_25
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_29
    return-object v0
.end method

.method public getStructure()Lcom/online/languages/study/studymaster/data/NavStructure;
    .registers 6

    new-instance v0, Lcom/online/languages/study/studymaster/data/NavStructure;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/data/DataFromJson;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/online/languages/study/studymaster/data/NavStructure;-><init>(Landroid/content/Context;)V

    :try_start_7
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/data/DataFromJson;->navStructureFile:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/online/languages/study/studymaster/data/DataFromJson;->loadJSONFromAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "sections"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    :goto_19
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_33

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, v0, Lcom/online/languages/study/studymaster/data/NavStructure;->sections:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/online/languages/study/studymaster/data/DataFromJson;->getNavSectionInfoFromJson(Lorg/json/JSONObject;)Lcom/online/languages/study/studymaster/data/NavSection;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_2c} :catch_2f

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :catch_2f
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_33
    return-object v0
.end method
