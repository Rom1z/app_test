.class public Landroidx/databinding/ObservableDouble;
.super Landroidx/databinding/BaseObservableField;
.source "ObservableDouble.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/databinding/ObservableDouble;",
            ">;"
        }
    .end annotation
.end field

.field static final serialVersionUID:J = 0x1L


# instance fields
.field private mValue:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/databinding/ObservableDouble$1;

    invoke-direct {v0}, Landroidx/databinding/ObservableDouble$1;-><init>()V

    sput-object v0, Landroidx/databinding/ObservableDouble;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/databinding/BaseObservableField;-><init>()V

    return-void
.end method

.method public constructor <init>(D)V
    .registers 3

    invoke-direct {p0}, Landroidx/databinding/BaseObservableField;-><init>()V

    iput-wide p1, p0, Landroidx/databinding/ObservableDouble;->mValue:D

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

.method public get()D
    .registers 3

    iget-wide v0, p0, Landroidx/databinding/ObservableDouble;->mValue:D

    return-wide v0
.end method

.method public set(D)V
    .registers 6

    iget-wide v0, p0, Landroidx/databinding/ObservableDouble;->mValue:D

    cmpl-double v2, p1, v0

    if-eqz v2, :cond_b

    iput-wide p1, p0, Landroidx/databinding/ObservableDouble;->mValue:D

    invoke-virtual {p0}, Landroidx/databinding/ObservableDouble;->notifyChange()V

    :cond_b
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-wide v0, p0, Landroidx/databinding/ObservableDouble;->mValue:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
