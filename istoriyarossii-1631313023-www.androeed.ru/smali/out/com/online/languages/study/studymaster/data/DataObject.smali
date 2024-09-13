.class public Lcom/online/languages/study/studymaster/data/DataObject;
.super Ljava/lang/Object;
.source "DataObject.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public count:I

.field public desc:Ljava/lang/String;

.field public filter:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public image:Ljava/lang/String;

.field public info:Ljava/lang/String;

.field public order:I

.field public params:Ljava/lang/String;

.field public parent:Ljava/lang/String;

.field public progress:I

.field public progress_1:I

.field public status:Ljava/lang/String;

.field public text:Ljava/lang/String;

.field public time_created:J

.field public time_updated:J

.field public time_updated_sort:J

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/online/languages/study/studymaster/data/DataObject$1;

    invoke-direct {v0}, Lcom/online/languages/study/studymaster/data/DataObject$1;-><init>()V

    sput-object v0, Lcom/online/languages/study/studymaster/data/DataObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->desc:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->info:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->image:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->parent:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->status:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->filter:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->params:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->count:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->progress:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->progress_1:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->order:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->time_created:J

    iput-wide v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->time_updated:J

    iput-wide v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->time_updated_sort:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->desc:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->info:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->image:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->parent:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->status:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->filter:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->params:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->count:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->progress:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->progress_1:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->order:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->time_created:J

    iput-wide v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->time_updated:J

    iput-wide v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->time_updated_sort:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->id:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->title:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->desc:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->text:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->info:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->image:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->parent:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->status:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->filter:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->type:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->params:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->count:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->progress:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->progress_1:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/online/languages/study/studymaster/data/DataObject;->order:I

    return-void
.end method

.method public constructor <init>(Lcom/online/languages/study/studymaster/data/NoteData;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->desc:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->info:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->image:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->parent:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->status:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->filter:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->params:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->count:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->progress:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->progress_1:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->order:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->time_created:J

    iput-wide v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->time_updated:J

    iput-wide v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->time_updated_sort:J

    iget-object v0, p1, Lcom/online/languages/study/studymaster/data/NoteData;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->id:Ljava/lang/String;

    iget-object v0, p1, Lcom/online/languages/study/studymaster/data/NoteData;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->title:Ljava/lang/String;

    iget-object v0, p1, Lcom/online/languages/study/studymaster/data/NoteData;->content:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->text:Ljava/lang/String;

    iget-object v0, p1, Lcom/online/languages/study/studymaster/data/NoteData;->image:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->image:Ljava/lang/String;

    iget-object v0, p1, Lcom/online/languages/study/studymaster/data/NoteData;->parent:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->parent:Ljava/lang/String;

    iget-wide v0, p1, Lcom/online/languages/study/studymaster/data/NoteData;->time_updated:J

    iput-wide v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->time_updated:J

    iget-wide v0, p1, Lcom/online/languages/study/studymaster/data/NoteData;->time_updated_sort:J

    iput-wide v0, p0, Lcom/online/languages/study/studymaster/data/DataObject;->time_updated_sort:J

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

    iget-object p2, p0, Lcom/online/languages/study/studymaster/data/DataObject;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/data/DataObject;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/data/DataObject;->desc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/data/DataObject;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/data/DataObject;->info:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/data/DataObject;->image:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/data/DataObject;->parent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/data/DataObject;->status:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/data/DataObject;->filter:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/data/DataObject;->type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/data/DataObject;->params:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/online/languages/study/studymaster/data/DataObject;->count:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/online/languages/study/studymaster/data/DataObject;->progress:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/online/languages/study/studymaster/data/DataObject;->progress_1:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/online/languages/study/studymaster/data/DataObject;->order:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
