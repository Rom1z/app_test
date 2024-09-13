.class public Lcom/online/languages/study/studymaster/data/DataItem;
.super Ljava/lang/Object;
.source "DataItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public cat:Ljava/lang/String;

.field public db_filter:Ljava/lang/String;

.field public divider:Ljava/lang/String;

.field public errors:I

.field public filter:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public image:Ljava/lang/String;

.field public info:Ljava/lang/String;

.field public item:Ljava/lang/String;

.field public item_info_1:Ljava/lang/String;

.field public mode:I

.field public order:I

.field public rate:I

.field public starred:I

.field public starred_time:J

.field public testError:I

.field public time:J

.field public time_errors:J

.field public type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/online/languages/study/studymaster/data/DataItem$1;

    invoke-direct {v0}, Lcom/online/languages/study/studymaster/data/DataItem$1;-><init>()V

    sput-object v0, Lcom/online/languages/study/studymaster/data/DataItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->item:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->info:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->image:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->divider:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/online/languages/study/studymaster/data/DataItem;->mode:I

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->item_info_1:Ljava/lang/String;

    iput v1, p0, Lcom/online/languages/study/studymaster/data/DataItem;->starred:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/online/languages/study/studymaster/data/DataItem;->starred_time:J

    iput v1, p0, Lcom/online/languages/study/studymaster/data/DataItem;->rate:I

    iput v1, p0, Lcom/online/languages/study/studymaster/data/DataItem;->errors:I

    iput v1, p0, Lcom/online/languages/study/studymaster/data/DataItem;->testError:I

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->filter:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->db_filter:Ljava/lang/String;

    iput v1, p0, Lcom/online/languages/study/studymaster/data/DataItem;->order:I

    iput-wide v2, p0, Lcom/online/languages/study/studymaster/data/DataItem;->time:J

    iput-wide v2, p0, Lcom/online/languages/study/studymaster/data/DataItem;->time_errors:J

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->cat:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->item:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->info:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->image:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->divider:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/online/languages/study/studymaster/data/DataItem;->mode:I

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->item_info_1:Ljava/lang/String;

    iput v1, p0, Lcom/online/languages/study/studymaster/data/DataItem;->starred:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/online/languages/study/studymaster/data/DataItem;->starred_time:J

    iput v1, p0, Lcom/online/languages/study/studymaster/data/DataItem;->rate:I

    iput v1, p0, Lcom/online/languages/study/studymaster/data/DataItem;->errors:I

    iput v1, p0, Lcom/online/languages/study/studymaster/data/DataItem;->testError:I

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->filter:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->db_filter:Ljava/lang/String;

    iput v1, p0, Lcom/online/languages/study/studymaster/data/DataItem;->order:I

    iput-wide v2, p0, Lcom/online/languages/study/studymaster/data/DataItem;->time:J

    iput-wide v2, p0, Lcom/online/languages/study/studymaster/data/DataItem;->time_errors:J

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->cat:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->item:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->info:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->id:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->image:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->item_info_1:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->filter:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->db_filter:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->starred:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/online/languages/study/studymaster/data/DataItem;->testError:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->item:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->info:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->image:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->divider:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/online/languages/study/studymaster/data/DataItem;->mode:I

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->item_info_1:Ljava/lang/String;

    iput v1, p0, Lcom/online/languages/study/studymaster/data/DataItem;->starred:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/online/languages/study/studymaster/data/DataItem;->starred_time:J

    iput v1, p0, Lcom/online/languages/study/studymaster/data/DataItem;->rate:I

    iput v1, p0, Lcom/online/languages/study/studymaster/data/DataItem;->errors:I

    iput v1, p0, Lcom/online/languages/study/studymaster/data/DataItem;->testError:I

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->filter:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->db_filter:Ljava/lang/String;

    iput v1, p0, Lcom/online/languages/study/studymaster/data/DataItem;->order:I

    iput-wide v2, p0, Lcom/online/languages/study/studymaster/data/DataItem;->time:J

    iput-wide v2, p0, Lcom/online/languages/study/studymaster/data/DataItem;->time_errors:J

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->cat:Ljava/lang/String;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/DataItem;->item:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->item:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->info:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->image:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->divider:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/online/languages/study/studymaster/data/DataItem;->mode:I

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->item_info_1:Ljava/lang/String;

    iput v1, p0, Lcom/online/languages/study/studymaster/data/DataItem;->starred:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/online/languages/study/studymaster/data/DataItem;->starred_time:J

    iput v1, p0, Lcom/online/languages/study/studymaster/data/DataItem;->rate:I

    iput v1, p0, Lcom/online/languages/study/studymaster/data/DataItem;->errors:I

    iput v1, p0, Lcom/online/languages/study/studymaster/data/DataItem;->testError:I

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->filter:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->db_filter:Ljava/lang/String;

    iput v1, p0, Lcom/online/languages/study/studymaster/data/DataItem;->order:I

    iput-wide v2, p0, Lcom/online/languages/study/studymaster/data/DataItem;->time:J

    iput-wide v2, p0, Lcom/online/languages/study/studymaster/data/DataItem;->time_errors:J

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->cat:Ljava/lang/String;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/DataItem;->item:Ljava/lang/String;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/data/DataItem;->info:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->item:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->info:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->image:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->divider:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/online/languages/study/studymaster/data/DataItem;->mode:I

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->item_info_1:Ljava/lang/String;

    iput v1, p0, Lcom/online/languages/study/studymaster/data/DataItem;->starred:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/online/languages/study/studymaster/data/DataItem;->starred_time:J

    iput v1, p0, Lcom/online/languages/study/studymaster/data/DataItem;->rate:I

    iput v1, p0, Lcom/online/languages/study/studymaster/data/DataItem;->errors:I

    iput v1, p0, Lcom/online/languages/study/studymaster/data/DataItem;->testError:I

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->filter:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->db_filter:Ljava/lang/String;

    iput v1, p0, Lcom/online/languages/study/studymaster/data/DataItem;->order:I

    iput-wide v2, p0, Lcom/online/languages/study/studymaster/data/DataItem;->time:J

    iput-wide v2, p0, Lcom/online/languages/study/studymaster/data/DataItem;->time_errors:J

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->cat:Ljava/lang/String;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/DataItem;->item:Ljava/lang/String;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/data/DataItem;->info:Ljava/lang/String;

    iput-object p3, p0, Lcom/online/languages/study/studymaster/data/DataItem;->id:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->item:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->info:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->image:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->divider:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/online/languages/study/studymaster/data/DataItem;->mode:I

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->item_info_1:Ljava/lang/String;

    iput v1, p0, Lcom/online/languages/study/studymaster/data/DataItem;->starred:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/online/languages/study/studymaster/data/DataItem;->starred_time:J

    iput v1, p0, Lcom/online/languages/study/studymaster/data/DataItem;->rate:I

    iput v1, p0, Lcom/online/languages/study/studymaster/data/DataItem;->errors:I

    iput v1, p0, Lcom/online/languages/study/studymaster/data/DataItem;->testError:I

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->filter:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->db_filter:Ljava/lang/String;

    iput v1, p0, Lcom/online/languages/study/studymaster/data/DataItem;->order:I

    iput-wide v2, p0, Lcom/online/languages/study/studymaster/data/DataItem;->time:J

    iput-wide v2, p0, Lcom/online/languages/study/studymaster/data/DataItem;->time_errors:J

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataItem;->cat:Ljava/lang/String;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/DataItem;->item:Ljava/lang/String;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/data/DataItem;->info:Ljava/lang/String;

    iput-object p3, p0, Lcom/online/languages/study/studymaster/data/DataItem;->id:Ljava/lang/String;

    iput-object p4, p0, Lcom/online/languages/study/studymaster/data/DataItem;->image:Ljava/lang/String;

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

    iget-object p2, p0, Lcom/online/languages/study/studymaster/data/DataItem;->item:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/data/DataItem;->info:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/data/DataItem;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/data/DataItem;->image:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/data/DataItem;->item_info_1:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/data/DataItem;->filter:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/data/DataItem;->db_filter:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/online/languages/study/studymaster/data/DataItem;->starred:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/online/languages/study/studymaster/data/DataItem;->testError:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
