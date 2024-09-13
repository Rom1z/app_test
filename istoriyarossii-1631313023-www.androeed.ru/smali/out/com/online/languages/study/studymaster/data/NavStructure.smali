.class public Lcom/online/languages/study/studymaster/data/NavStructure;
.super Ljava/lang/Object;
.source "NavStructure.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public categories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/NavCategory;",
            ">;"
        }
    .end annotation
.end field

.field public sections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/NavSection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/online/languages/study/studymaster/data/NavStructure$1;

    invoke-direct {v0}, Lcom/online/languages/study/studymaster/data/NavStructure$1;-><init>()V

    sput-object v0, Lcom/online/languages/study/studymaster/data/NavStructure;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/NavStructure;->sections:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/NavStructure;->categories:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/NavStructure;->sections:Ljava/util/ArrayList;

    sget-object v1, Lcom/online/languages/study/studymaster/data/NavSection;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getNavCatFromSection(Ljava/lang/String;Ljava/lang/String;)Lcom/online/languages/study/studymaster/data/NavCategory;
    .registers 6

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/data/NavStructure;->getNavSectionByID(Ljava/lang/String;)Lcom/online/languages/study/studymaster/data/NavSection;

    move-result-object p1

    new-instance v0, Lcom/online/languages/study/studymaster/data/NavCategory;

    invoke-direct {v0}, Lcom/online/languages/study/studymaster/data/NavCategory;-><init>()V

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/NavSection;->navCategories:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_f
    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/online/languages/study/studymaster/data/NavCategory;

    iget-object v2, v1, Lcom/online/languages/study/studymaster/data/NavCategory;->id:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    move-object v0, v1

    goto :goto_f

    :cond_25
    return-object v0
.end method

.method public getNavCatListFromParent(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/NavCategory;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/data/NavStructure;->sections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/online/languages/study/studymaster/data/NavSection;

    iget-object v3, v2, Lcom/online/languages/study/studymaster/data/NavSection;->id:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object p2, v2, Lcom/online/languages/study/studymaster/data/NavSection;->navCategories:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_25
    :goto_25
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/online/languages/study/studymaster/data/NavCategory;

    iget-object v2, v1, Lcom/online/languages/study/studymaster/data/NavCategory;->parent:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_3d
    return-object v0
.end method

.method public getNavSectionByID(Ljava/lang/String;)Lcom/online/languages/study/studymaster/data/NavSection;
    .registers 6

    new-instance v0, Lcom/online/languages/study/studymaster/data/NavSection;

    invoke-direct {v0}, Lcom/online/languages/study/studymaster/data/NavSection;-><init>()V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/data/NavStructure;->sections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/online/languages/study/studymaster/data/NavSection;

    iget-object v3, v2, Lcom/online/languages/study/studymaster/data/NavSection;->id:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    move-object v0, v2

    goto :goto_b

    :cond_21
    return-object v0
.end method

.method public getUniqueCats()Ljava/util/ArrayList;
    .registers 7
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

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/NavStructure;->categories:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/data/NavStructure;->sections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_61

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/online/languages/study/studymaster/data/NavSection;

    iget-object v2, v2, Lcom/online/languages/study/studymaster/data/NavSection;->uniqueCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_24
    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/online/languages/study/studymaster/data/NavCategory;

    iget-object v4, v3, Lcom/online/languages/study/studymaster/data/NavCategory;->type:Ljava/lang/String;

    const-string v5, "group"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    iget-object v4, v3, Lcom/online/languages/study/studymaster/data/NavCategory;->type:Ljava/lang/String;

    const-string v5, "set"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    iget-object v4, v3, Lcom/online/languages/study/studymaster/data/NavCategory;->spec:Ljava/lang/String;

    const-string v5, "maps_list"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    iget-object v4, v3, Lcom/online/languages/study/studymaster/data/NavCategory;->id:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    iget-object v4, p0, Lcom/online/languages/study/studymaster/data/NavStructure;->categories:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v3, Lcom/online/languages/study/studymaster/data/NavCategory;->id:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_61
    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/NavStructure;->categories:Ljava/util/ArrayList;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    iget-object p2, p0, Lcom/online/languages/study/studymaster/data/NavStructure;->sections:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
