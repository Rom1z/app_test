.class public Lcom/online/languages/study/studymaster/data/ExerciseTask;
.super Ljava/lang/Object;
.source "ExerciseTask.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public correct:I

.field public data:Lcom/online/languages/study/studymaster/data/DataItem;

.field public options:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public quest:Ljava/lang/String;

.field public questInfo:Ljava/lang/String;

.field public savedInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/online/languages/study/studymaster/data/ExerciseTask$1;

    invoke-direct {v0}, Lcom/online/languages/study/studymaster/data/ExerciseTask$1;-><init>()V

    sput-object v0, Lcom/online/languages/study/studymaster/data/ExerciseTask;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/online/languages/study/studymaster/data/DataItem;

    invoke-direct {v0}, Lcom/online/languages/study/studymaster/data/DataItem;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ExerciseTask;->data:Lcom/online/languages/study/studymaster/data/DataItem;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/online/languages/study/studymaster/data/DataItem;

    invoke-direct {v0}, Lcom/online/languages/study/studymaster/data/DataItem;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ExerciseTask;->data:Lcom/online/languages/study/studymaster/data/DataItem;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ExerciseTask;->options:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ExerciseTask;->quest:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ExerciseTask;->questInfo:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ExerciseTask;->savedInfo:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/online/languages/study/studymaster/data/ExerciseTask;->correct:I

    const-class v0, Lcom/online/languages/study/studymaster/data/DataItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/online/languages/study/studymaster/data/DataItem;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ExerciseTask;->data:Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/ExerciseTask;->options:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Lcom/online/languages/study/studymaster/data/ExerciseTask;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/online/languages/study/studymaster/data/DataItem;

    invoke-direct {v0}, Lcom/online/languages/study/studymaster/data/DataItem;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ExerciseTask;->data:Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object v0, p1, Lcom/online/languages/study/studymaster/data/ExerciseTask;->quest:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ExerciseTask;->quest:Ljava/lang/String;

    iget-object v0, p1, Lcom/online/languages/study/studymaster/data/ExerciseTask;->questInfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ExerciseTask;->questInfo:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/online/languages/study/studymaster/data/ExerciseTask;->options:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ExerciseTask;->options:Ljava/util/ArrayList;

    iget v0, p1, Lcom/online/languages/study/studymaster/data/ExerciseTask;->correct:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/ExerciseTask;->correct:I

    iget-object v0, p1, Lcom/online/languages/study/studymaster/data/ExerciseTask;->savedInfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ExerciseTask;->savedInfo:Ljava/lang/String;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/ExerciseTask;->data:Lcom/online/languages/study/studymaster/data/DataItem;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/ExerciseTask;->data:Lcom/online/languages/study/studymaster/data/DataItem;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/online/languages/study/studymaster/data/DataItem;

    invoke-direct {v0}, Lcom/online/languages/study/studymaster/data/DataItem;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ExerciseTask;->data:Lcom/online/languages/study/studymaster/data/DataItem;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/ExerciseTask;->quest:Ljava/lang/String;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/data/ExerciseTask;->questInfo:Ljava/lang/String;

    iput-object p3, p0, Lcom/online/languages/study/studymaster/data/ExerciseTask;->options:Ljava/util/ArrayList;

    iput p4, p0, Lcom/online/languages/study/studymaster/data/ExerciseTask;->correct:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/online/languages/study/studymaster/data/DataItem;

    invoke-direct {v0}, Lcom/online/languages/study/studymaster/data/DataItem;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ExerciseTask;->data:Lcom/online/languages/study/studymaster/data/DataItem;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/ExerciseTask;->quest:Ljava/lang/String;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/data/ExerciseTask;->questInfo:Ljava/lang/String;

    iput-object p3, p0, Lcom/online/languages/study/studymaster/data/ExerciseTask;->options:Ljava/util/ArrayList;

    iput p4, p0, Lcom/online/languages/study/studymaster/data/ExerciseTask;->correct:I

    iput-object p5, p0, Lcom/online/languages/study/studymaster/data/ExerciseTask;->savedInfo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/ExerciseTask;->quest:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/ExerciseTask;->questInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/ExerciseTask;->savedInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/online/languages/study/studymaster/data/ExerciseTask;->correct:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/ExerciseTask;->data:Lcom/online/languages/study/studymaster/data/DataItem;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/data/ExerciseTask;->options:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
