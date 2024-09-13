.class final Lcom/online/languages/study/studymaster/data/DataItem$1;
.super Ljava/lang/Object;
.source "DataItem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/online/languages/study/studymaster/data/DataItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/online/languages/study/studymaster/data/DataItem;
    .registers 3

    new-instance v0, Lcom/online/languages/study/studymaster/data/DataItem;

    invoke-direct {v0, p1}, Lcom/online/languages/study/studymaster/data/DataItem;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/data/DataItem$1;->createFromParcel(Landroid/os/Parcel;)Lcom/online/languages/study/studymaster/data/DataItem;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/online/languages/study/studymaster/data/DataItem;
    .registers 2

    new-array p1, p1, [Lcom/online/languages/study/studymaster/data/DataItem;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/data/DataItem$1;->newArray(I)[Lcom/online/languages/study/studymaster/data/DataItem;

    move-result-object p1

    return-object p1
.end method
