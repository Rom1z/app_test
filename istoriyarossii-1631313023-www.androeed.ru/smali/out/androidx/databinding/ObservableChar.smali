.class public Landroidx/databinding/ObservableChar;
.super Landroidx/databinding/BaseObservableField;
.source "ObservableChar.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/databinding/ObservableChar;",
            ">;"
        }
    .end annotation
.end field

.field static final serialVersionUID:J = 0x1L


# instance fields
.field private mValue:C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/databinding/ObservableChar$1;

    invoke-direct {v0}, Landroidx/databinding/ObservableChar$1;-><init>()V

    sput-object v0, Landroidx/databinding/ObservableChar;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/databinding/BaseObservableField;-><init>()V

    return-void
.end method

.method public constructor <init>(C)V
    .registers 2

    invoke-direct {p0}, Landroidx/databinding/BaseObservableField;-><init>()V

    iput-char p1, p0, Landroidx/databinding/ObservableChar;->mValue:C

    return-void
.end method

.method public varargs constructor <init>([Landroidx/databinding/Observable;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/databinding/BaseObservableField;-><init>([Landroidx/databinding/Observable;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public get()C
    .registers 2

    iget-char v0, p0, Landroidx/databinding/ObservableChar;->mValue:C

    return v0
.end method

.method public set(C)V
    .registers 3

    iget-char v0, p0, Landroidx/databinding/ObservableChar;->mValue:C

    if-eq p1, v0, :cond_9

    iput-char p1, p0, Landroidx/databinding/ObservableChar;->mValue:C

    invoke-virtual {p0}, Landroidx/databinding/ObservableChar;->notifyChange()V

    :cond_9
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    iget-char p2, p0, Landroidx/databinding/ObservableChar;->mValue:C

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
