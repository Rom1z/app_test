.class public Lcom/online/languages/study/studymaster/data/DetailFromJson;
.super Ljava/lang/Object;
.source "DetailFromJson.java"


# instance fields
.field context:Landroid/content/Context;

.field public data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DetailItem;",
            ">;"
        }
    .end annotation
.end field

.field public detail:Lcom/online/languages/study/studymaster/data/DetailItem;

.field private detailFile:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DetailFromJson;->data:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/DetailFromJson;->context:Landroid/content/Context;

    const v0, 0x7f110020

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/DetailFromJson;->detailFile:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DetailFromJson;->data:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/DetailFromJson;->context:Landroid/content/Context;

    const v0, 0x7f110020

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/DetailFromJson;->detailFile:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/online/languages/study/studymaster/data/DetailFromJson;->fillData(Ljava/lang/String;)V

    return-void
.end method

.method private fillData(Ljava/lang/String;)V
    .registers 16

    const-string v0, "img_info"

    const-string v1, "title"

    :try_start_4
    iget-object v2, p0, Lcom/online/languages/study/studymaster/data/DetailFromJson;->detailFile:Ljava/lang/String;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {p0, v2}, Lcom/online/languages/study/studymaster/data/DetailFromJson;->loadJSONFromAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "details"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v3, "not found"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    :goto_1c
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_20} :catch_81

    const-string v7, ""

    if-ge v4, v6, :cond_6d

    :try_start_24
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v8, "id"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6a

    const-string v2, "desc"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "image"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    goto :goto_4d

    :cond_4c
    move-object v10, v7

    :goto_4d
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_57
    new-instance v0, Lcom/online/languages/study/studymaster/data/DetailItem;

    move-object v8, v0

    move-object v9, p1

    move-object v11, v3

    move-object v12, v2

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/online/languages/study/studymaster/data/DetailItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DetailFromJson;->detail:Lcom/online/languages/study/studymaster/data/DetailItem;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v4, v2

    goto :goto_6e

    :cond_6a
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_6d
    move-object v4, v7

    :goto_6e
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_85

    new-instance v6, Lcom/online/languages/study/studymaster/data/DetailItem;

    const-string v2, "not found"

    move-object v0, v6

    move-object v1, p1

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/online/languages/study/studymaster/data/DetailItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/online/languages/study/studymaster/data/DetailFromJson;->detail:Lcom/online/languages/study/studymaster/data/DetailItem;
    :try_end_80
    .catch Lorg/json/JSONException; {:try_start_24 .. :try_end_80} :catch_81

    goto :goto_85

    :catch_81
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_85
    :goto_85
    return-void
.end method

.method private getDataInfoFromJson(Lorg/json/JSONObject;)Lcom/online/languages/study/studymaster/data/DetailItem;
    .registers 9

    const-string v0, "addition"

    const-string v1, "speak"

    const-string v2, "img_info"

    const-string v3, "title"

    new-instance v4, Lcom/online/languages/study/studymaster/data/DetailItem;

    invoke-direct {v4}, Lcom/online/languages/study/studymaster/data/DetailItem;-><init>()V

    :try_start_d
    const-string v5, "id"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/online/languages/study/studymaster/data/DetailItem;->id:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_19} :catch_75

    const-string v6, ""

    if-eqz v5, :cond_22

    :try_start_1d
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_23

    :cond_22
    move-object v3, v6

    :goto_23
    iput-object v3, v4, Lcom/online/languages/study/studymaster/data/DetailItem;->title:Ljava/lang/String;

    const-string v3, "desc"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/online/languages/study/studymaster/data/DetailItem;->desc:Ljava/lang/String;

    const-string v3, "image"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/online/languages/study/studymaster/data/DetailItem;->image:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_41

    :cond_40
    move-object v2, v6

    :goto_41
    iput-object v2, v4, Lcom/online/languages/study/studymaster/data/DetailItem;->img_info:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_66

    :cond_4e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v4, Lcom/online/languages/study/studymaster/data/DetailItem;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v4, Lcom/online/languages/study/studymaster/data/DetailItem;->desc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_66
    iput-object v1, v4, Lcom/online/languages/study/studymaster/data/DetailItem;->speak_text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_72
    iput-object v6, v4, Lcom/online/languages/study/studymaster/data/DetailItem;->map:Ljava/lang/String;
    :try_end_74
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_74} :catch_75

    goto :goto_79

    :catch_75
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_79
    return-object v4
.end method

.method private loadJSONFromAsset(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/DetailFromJson;->context:Landroid/content/Context;

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
            "Lcom/online/languages/study/studymaster/data/DetailItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/data/DetailFromJson;->detailFile:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/online/languages/study/studymaster/data/DetailFromJson;->loadJSONFromAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "details"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    :goto_17
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2f

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/online/languages/study/studymaster/data/DetailFromJson;->getDataInfoFromJson(Lorg/json/JSONObject;)Lcom/online/languages/study/studymaster/data/DetailItem;

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

.method public getTest(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/ExerciseTask;",
            ">;"
        }
    .end annotation

    const-string v0, "quest"

    const-string v1, "test"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_9
    new-instance v3, Lorg/json/JSONObject;

    const-string v4, "tests/test.json"
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_d} :catch_ba

    move-object/from16 v5, p0

    :try_start_f
    invoke-direct {v5, v4}, Lcom/online/languages/study/studymaster/data/DetailFromJson;->loadJSONFromAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "data"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v6, 0x0

    :goto_1d
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_c0

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_2b} :catch_b8

    const-string v9, ""

    if-eqz v8, :cond_36

    :try_start_2f
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v10, p1

    goto :goto_39

    :cond_36
    move-object/from16 v10, p1

    move-object v8, v9

    :goto_39
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b4

    const-string v11, "tasks"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    const/4 v11, 0x0

    :goto_46
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v11, v12, :cond_b4

    invoke-virtual {v7, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    new-instance v13, Lcom/online/languages/study/studymaster/data/ExerciseTask;

    invoke-direct {v13}, Lcom/online/languages/study/studymaster/data/ExerciseTask;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v13, Lcom/online/languages/study/studymaster/data/ExerciseTask;->options:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_67

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto :goto_68

    :cond_67
    move-object v14, v9

    :goto_68
    iput-object v14, v13, Lcom/online/languages/study/studymaster/data/ExerciseTask;->quest:Ljava/lang/String;

    const-string v14, "options"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    const/4 v14, 0x0

    :goto_71
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v14, v15, :cond_8b

    invoke-virtual {v12, v14}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    if-nez v14, :cond_83

    iput-object v15, v13, Lcom/online/languages/study/studymaster/data/ExerciseTask;->questInfo:Ljava/lang/String;

    :cond_83
    iget-object v4, v13, Lcom/online/languages/study/studymaster/data/ExerciseTask;->options:Ljava/util/ArrayList;

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_71

    :cond_8b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "_"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v13, Lcom/online/languages/study/studymaster/data/ExerciseTask;->savedInfo:Ljava/lang/String;

    new-instance v4, Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object v12, v13, Lcom/online/languages/study/studymaster/data/ExerciseTask;->quest:Ljava/lang/String;

    iget-object v14, v13, Lcom/online/languages/study/studymaster/data/ExerciseTask;->questInfo:Ljava/lang/String;

    invoke-direct {v4, v12, v14}, Lcom/online/languages/study/studymaster/data/DataItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v12, v13, Lcom/online/languages/study/studymaster/data/ExerciseTask;->savedInfo:Ljava/lang/String;

    iput-object v12, v4, Lcom/online/languages/study/studymaster/data/DataItem;->id:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b1
    .catch Lorg/json/JSONException; {:try_start_2f .. :try_end_b1} :catch_b8

    add-int/lit8 v11, v11, 0x1

    goto :goto_46

    :cond_b4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1d

    :catch_b8
    move-exception v0

    goto :goto_bd

    :catch_ba
    move-exception v0

    move-object/from16 v5, p0

    :goto_bd
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_c0
    return-object v2
.end method
