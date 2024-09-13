.class public Lcom/online/languages/study/studymaster/StarredGalleryActivity;
.super Lcom/online/languages/study/studymaster/ImageListActivity;
.source "StarredGalleryActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/ImageListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getDataItems()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/online/languages/study/studymaster/StarredGalleryActivity;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/online/languages/study/studymaster/data/DataManager;->getStarredWords(ILjava/lang/Boolean;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getListType()Ljava/lang/String;
    .registers 2

    const-string v0, "starred"

    return-object v0
.end method
