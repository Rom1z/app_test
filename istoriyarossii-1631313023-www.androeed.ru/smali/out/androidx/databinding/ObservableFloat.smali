.class public Landroidx/databinding/ObservableFloat;
.super Landroidx/databinding/BaseObservableField;
.source "ObservableFloat.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/databinding/ObservableFloat;",
            ">;"
        }
    .end annotation
.end field

.field static final serialVersionUID:J = 0x1L


# instance fields
.field private mValue:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/databinding/ObservableFloat$1;

    invoke-direct {v0}, Landroidx/databinding/ObservableFloat$1;-><init>()V

    sput-object v0, Landroidx/databinding/ObservableFloat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/databinding/BaseObservableField;-><init>()V

    return-void
.end method

.method public constructor <init>(F)V
    .registers 2

    invoke-direct {p0}, Landroidx/databinding/BaseObservableField;-><init>()V

    iput p1, p0, Landroidx/databinding/ObservableFloat;->mValue:F

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

.method public get()F
    .registers 2

    iget v0, p0, Landroidx/databinding/ObservableFloat;->mValue:F

    return v0
.end method

.method public set(F)V
    .registers 3

    iget v0, p0, Landroidx/databinding/ObservableFloat;->mValue:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_b

    iput p1, p0, Landroidx/databinding/ObservableFloat;->mValue:F

    invoke-virtual {p0}, Landroidx/databinding/ObservableFloat;->notifyChange()V

    :cond_b
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    iget p2, p0, Landroidx/databinding/ObservableFloat;->mValue:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
