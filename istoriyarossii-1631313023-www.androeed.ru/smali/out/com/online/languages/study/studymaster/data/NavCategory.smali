.class public Lcom/online/languages/study/studymaster/data/NavCategory;
.super Ljava/lang/Object;
.source "NavCategory.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public desc:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public image:Ljava/lang/String;

.field public param:Ljava/lang/String;

.field public parent:Ljava/lang/String;

.field protected progress:I

.field public review:Z

.field public sort:Ljava/lang/String;

.field public spec:Ljava/lang/String;

.field public tests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public unlocked:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/online/languages/study/studymaster/data/NavCategory$1;

    invoke-direct {v0}, Lcom/online/languages/study/studymaster/data/NavCategory$1;-><init>()V

    sput-object v0, Lcom/online/languages/study/studymaster/data/NavCategory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/NavCategory;->param:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/NavCategory;->tests:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/online/languages/study/studymaster/data/NavCategory;->progress:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/online/languages/study/studymaster/data/NavCategory;->review:Z

    iput-boolean v0, p0, Lcom/online/languages/study/studymaster/data/NavCategory;->unlocked:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/NavCategory;->param:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/NavCategory;->tests:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/online/languages/study/studymaster/data/NavCategory;->progress:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/online/languages/study/studymaster/data/NavCategory;->review:Z

    iput-boolean v1, p0, Lcom/online/languages/study/studymaster/data/NavCategory;->unlocked:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/online/languages/study/studymaster/data/NavCategory;->id:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/online/languages/study/studymaster/data/NavCategory;->title:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/online/languages/study/studymaster/data/NavCategory;->desc:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/online/languages/study/studymaster/data/NavCategory;->parent:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/online/languages/study/studymaster/data/NavCategory;->type:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/online/languages/study/studymaster/data/NavCategory;->spec:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/online/languages/study/studymaster/data/NavCategory;->image:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/online/languages/study/studymaster/data/NavCategory;->param:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v1, :cond_4e

    const/4 v2, 0x1

    goto :goto_4f

    :cond_4e
    const/4 v2, 0x0

    :goto_4f
    iput-boolean v2, p0, Lcom/online/languages/study/studymaster/data/NavCategory;->review:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v1, :cond_58

    const/4 v0, 0x1

    :cond_58
    iput-boolean v0, p0, Lcom/online/languages/study/studymaster/data/NavCategory;->unlocked:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    iget-object p2, p0, Lcom/online/languages/study/studymaster/data/NavCategory;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/data/NavCategory;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/data/NavCategory;->desc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/data/NavCategory;->parent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/data/NavCategory;->type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/data/NavCategory;->spec:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/data/NavCategory;->image:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/data/NavCategory;->param:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/online/languages/study/studymaster/data/NavCategory;->review:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/online/languages/study/studymaster/data/NavCategory;->unlocked:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
