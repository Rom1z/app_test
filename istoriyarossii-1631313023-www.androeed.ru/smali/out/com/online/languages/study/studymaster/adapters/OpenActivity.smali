.class public Lcom/online/languages/study/studymaster/adapters/OpenActivity;
.super Ljava/lang/Object;
.source "OpenActivity.java"


# instance fields
.field context:Landroid/content/Context;

.field private requestCode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->requestCode:I

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->context:Landroid/content/Context;

    return-void
.end method

.method private callActivity(Landroid/content/Intent;)V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->requestCode:I

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageTransition()V

    const/4 p1, 0x1

    iput p1, p0, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->requestCode:I

    return-void
.end method

.method private callSubActivity(Landroid/content/Intent;Lcom/online/languages/study/studymaster/data/NavStructure;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "cat_id"

    invoke-virtual {p1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p4, "section_id"

    invoke-virtual {p1, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "nav_structure"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->callActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private catIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 6

    const-string v0, "cat_id"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "cat_title"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "cat_spec"

    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p1
.end method

.method private createIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private sectionIntent(Landroid/content/Intent;Lcom/online/languages/study/studymaster/data/NavStructure;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 6

    const-string v0, "parent"

    invoke-virtual {p1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p4, "section_id"

    invoke-virtual {p1, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "nav_structure"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p1
.end method


# virtual methods
.method public openCat(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->catIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->callActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public openCat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->context:Landroid/content/Context;

    const-class v1, Lcom/online/languages/study/studymaster/CatActivity;

    invoke-direct {p0, v0, v1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->createIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0, p1, p3, p2}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->catIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->callActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public openCatList(Lcom/online/languages/study/studymaster/data/NavStructure;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->context:Landroid/content/Context;

    const-class v1, Lcom/online/languages/study/studymaster/InfoListActivity;

    invoke-direct {p0, v0, v1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->createIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->callSubActivity(Landroid/content/Intent;Lcom/online/languages/study/studymaster/data/NavStructure;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public openFromViewCat(Lcom/online/languages/study/studymaster/data/NavStructure;Ljava/lang/String;Lcom/online/languages/study/studymaster/data/ViewCategory;)V
    .registers 7

    iget-object v0, p3, Lcom/online/languages/study/studymaster/data/ViewCategory;->type:Ljava/lang/String;

    const-string v1, "set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    iget-object v0, p3, Lcom/online/languages/study/studymaster/data/ViewCategory;->type:Ljava/lang/String;

    const-string v1, "group"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p3, Lcom/online/languages/study/studymaster/data/ViewCategory;->spec:Ljava/lang/String;

    const-string v1, "gallery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object p3, p3, Lcom/online/languages/study/studymaster/data/ViewCategory;->id:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->openGallery(Lcom/online/languages/study/studymaster/data/NavStructure;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c7

    :cond_26
    iget-object v0, p3, Lcom/online/languages/study/studymaster/data/ViewCategory;->spec:Ljava/lang/String;

    const-string v1, "maps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object p3, p3, Lcom/online/languages/study/studymaster/data/ViewCategory;->id:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->openMapList(Lcom/online/languages/study/studymaster/data/NavStructure;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c7

    :cond_37
    iget-object p3, p3, Lcom/online/languages/study/studymaster/data/ViewCategory;->id:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->openSubSection(Lcom/online/languages/study/studymaster/data/NavStructure;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c7

    :cond_3e
    iget-object v0, p3, Lcom/online/languages/study/studymaster/data/ViewCategory;->type:Ljava/lang/String;

    const-string v1, "test"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object p1, p3, Lcom/online/languages/study/studymaster/data/ViewCategory;->id:Ljava/lang/String;

    iget-object p2, p3, Lcom/online/languages/study/studymaster/data/ViewCategory;->spec:Ljava/lang/String;

    iget-object p3, p3, Lcom/online/languages/study/studymaster/data/ViewCategory;->title:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->openTest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c7

    :cond_53
    iget-object v0, p3, Lcom/online/languages/study/studymaster/data/ViewCategory;->spec:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_c8

    goto :goto_97

    :sswitch_61
    const-string v2, "maps_list"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    goto :goto_97

    :cond_6a
    const/4 v1, 0x4

    goto :goto_97

    :sswitch_6c
    const-string v2, "text"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_75

    goto :goto_97

    :cond_75
    const/4 v1, 0x3

    goto :goto_97

    :sswitch_77
    const-string v2, "map"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80

    goto :goto_97

    :cond_80
    const/4 v1, 0x2

    goto :goto_97

    :sswitch_82
    const-string v2, "items_list"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    goto :goto_97

    :cond_8b
    const/4 v1, 0x1

    goto :goto_97

    :sswitch_8d
    const-string v2, "image_list"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_96

    goto :goto_97

    :cond_96
    const/4 v1, 0x0

    :goto_97
    packed-switch v1, :pswitch_data_de

    iget-object p1, p3, Lcom/online/languages/study/studymaster/data/ViewCategory;->id:Ljava/lang/String;

    iget-object p2, p3, Lcom/online/languages/study/studymaster/data/ViewCategory;->spec:Ljava/lang/String;

    iget-object p3, p3, Lcom/online/languages/study/studymaster/data/ViewCategory;->title:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->openCat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c7

    :pswitch_a4
    iget-object p3, p3, Lcom/online/languages/study/studymaster/data/ViewCategory;->id:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->openMapList(Lcom/online/languages/study/studymaster/data/NavStructure;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c7

    :pswitch_aa
    iget-object v0, p3, Lcom/online/languages/study/studymaster/data/ViewCategory;->id:Ljava/lang/String;

    iget-object p3, p3, Lcom/online/languages/study/studymaster/data/ViewCategory;->title:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->openTextPage(Lcom/online/languages/study/studymaster/data/NavStructure;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c7

    :pswitch_b2
    iget-object p1, p3, Lcom/online/languages/study/studymaster/data/ViewCategory;->id:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->openMap(Ljava/lang/String;)V

    goto :goto_c7

    :pswitch_b8
    iget-object v0, p3, Lcom/online/languages/study/studymaster/data/ViewCategory;->id:Ljava/lang/String;

    iget-object p3, p3, Lcom/online/languages/study/studymaster/data/ViewCategory;->title:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->openCatList(Lcom/online/languages/study/studymaster/data/NavStructure;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c7

    :pswitch_c0
    iget-object v0, p3, Lcom/online/languages/study/studymaster/data/ViewCategory;->id:Ljava/lang/String;

    iget-object p3, p3, Lcom/online/languages/study/studymaster/data/ViewCategory;->title:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->openImageList(Lcom/online/languages/study/studymaster/data/NavStructure;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_c7
    return-void

    :sswitch_data_c8
    .sparse-switch
        -0x56029efe -> :sswitch_8d
        -0x5355a643 -> :sswitch_82
        0x1a55c -> :sswitch_77
        0x36452d -> :sswitch_6c
        0x6bd9e946 -> :sswitch_61
    .end sparse-switch

    :pswitch_data_de
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_b8
        :pswitch_b2
        :pswitch_aa
        :pswitch_a4
    .end packed-switch
.end method

.method public openGallery(Lcom/online/languages/study/studymaster/data/NavStructure;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/16 v0, 0x64

    iput v0, p0, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->requestCode:I

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->context:Landroid/content/Context;

    const-class v1, Lcom/online/languages/study/studymaster/GalleryActivity;

    invoke-direct {p0, v0, v1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->createIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->callSubActivity(Landroid/content/Intent;Lcom/online/languages/study/studymaster/data/NavStructure;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public openImageList(Lcom/online/languages/study/studymaster/data/NavStructure;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->context:Landroid/content/Context;

    const-class v1, Lcom/online/languages/study/studymaster/ImageListActivity;

    invoke-direct {p0, v0, v1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->createIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->callSubActivity(Landroid/content/Intent;Lcom/online/languages/study/studymaster/data/NavStructure;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public openMap(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->context:Landroid/content/Context;

    const-class v1, Lcom/online/languages/study/studymaster/MapActivity;

    invoke-direct {p0, v0, v1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->createIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "page_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->callActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public openMapList(Lcom/online/languages/study/studymaster/data/NavStructure;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->context:Landroid/content/Context;

    const-class v1, Lcom/online/languages/study/studymaster/MapListActivity;

    invoke-direct {p0, v0, v1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->createIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->callSubActivity(Landroid/content/Intent;Lcom/online/languages/study/studymaster/data/NavStructure;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public openSection(Landroid/content/Intent;Lcom/online/languages/study/studymaster/data/NavStructure;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->sectionIntent(Landroid/content/Intent;Lcom/online/languages/study/studymaster/data/NavStructure;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->callActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public openSubSection(Lcom/online/languages/study/studymaster/data/NavStructure;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->context:Landroid/content/Context;

    const-class v1, Lcom/online/languages/study/studymaster/SubSectionActivity;

    invoke-direct {p0, v0, v1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->createIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->callSubActivity(Landroid/content/Intent;Lcom/online/languages/study/studymaster/data/NavStructure;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public openTest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object p2, p0, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->context:Landroid/content/Context;

    const-class v0, Lcom/online/languages/study/studymaster/ExerciseActivity;

    invoke-direct {p0, p2, v0}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->createIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p2

    const-string v0, "cat_tag"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "ex_type"

    const/4 v0, 0x5

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "cat_title"

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "multichoice"

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string p3, "dataItems"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->context:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    iget p3, p0, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->requestCode:I

    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageTransition()V

    return-void
.end method

.method public openTextPage(Lcom/online/languages/study/studymaster/data/NavStructure;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->context:Landroid/content/Context;

    const-class v1, Lcom/online/languages/study/studymaster/TextActivity;

    invoke-direct {p0, v0, v1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->createIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->callSubActivity(Landroid/content/Intent;Lcom/online/languages/study/studymaster/data/NavStructure;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public pageBackTransition()V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f010029

    const v2, 0x7f01002c

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1c
    return-void
.end method

.method public pageTransition()V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f01002a

    const v2, 0x7f01002b

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_20
    return-void
.end method

.method public setOrientation()V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_17
    return-void
.end method
