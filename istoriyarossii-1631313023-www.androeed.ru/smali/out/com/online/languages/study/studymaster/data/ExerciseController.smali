.class public Lcom/online/languages/study/studymaster/data/ExerciseController;
.super Ljava/lang/Object;
.source "ExerciseController.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public completed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field private correctNum:I

.field private counter:I

.field private listSize:I

.field public tasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/ExerciseTask;",
            ">;"
        }
    .end annotation
.end field

.field private wrongNum:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/online/languages/study/studymaster/data/ExerciseController$1;

    invoke-direct {v0}, Lcom/online/languages/study/studymaster/data/ExerciseController$1;-><init>()V

    sput-object v0, Lcom/online/languages/study/studymaster/data/ExerciseController;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ExerciseController;->tasks:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ExerciseController;->completed:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ExerciseController;->tasks:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ExerciseController;->completed:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ExerciseController;->tasks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/online/languages/study/studymaster/data/ExerciseController;->correctNum:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/online/languages/study/studymaster/data/ExerciseController;->wrongNum:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/online/languages/study/studymaster/data/ExerciseController;->counter:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/online/languages/study/studymaster/data/ExerciseController;->listSize:I

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/ExerciseController;->tasks:Ljava/util/ArrayList;

    sget-object v1, Lcom/online/languages/study/studymaster/data/ExerciseTask;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/ExerciseController;->completed:Ljava/util/ArrayList;

    sget-object v1, Lcom/online/languages/study/studymaster/data/DataItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;III)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/ExerciseTask;",
            ">;III)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ExerciseController;->tasks:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ExerciseController;->completed:Ljava/util/ArrayList;

    iput p2, p0, Lcom/online/languages/study/studymaster/data/ExerciseController;->counter:I

    iput p3, p0, Lcom/online/languages/study/studymaster/data/ExerciseController;->correctNum:I

    iput p4, p0, Lcom/online/languages/study/studymaster/data/ExerciseController;->wrongNum:I

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/ExerciseController;->tasks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lcom/online/languages/study/studymaster/data/ExerciseController;->listSize:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public shuffleTasks()V
    .registers 2

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/ExerciseController;->tasks:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    iget p2, p0, Lcom/online/languages/study/studymaster/data/ExerciseController;->correctNum:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/online/languages/study/studymaster/data/ExerciseController;->wrongNum:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/online/languages/study/studymaster/data/ExerciseController;->counter:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/online/languages/study/studymaster/data/ExerciseController;->listSize:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/data/ExerciseController;->tasks:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/data/ExerciseController;->completed:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
