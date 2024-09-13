.class public abstract Lcom/google/android/gms/common/internal/IGoogleCertificatesApi$Stub;
.super Lcom/google/android/gms/internal/stable/zzb;

# interfaces
.implements Lcom/google/android/gms/common/internal/IGoogleCertificatesApi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/IGoogleCertificatesApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/IGoogleCertificatesApi$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.common.internal.IGoogleCertificatesApi"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/stable/zzb;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/IGoogleCertificatesApi;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.common.internal.IGoogleCertificatesApi"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/common/internal/IGoogleCertificatesApi;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/google/android/gms/common/internal/IGoogleCertificatesApi;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/common/internal/IGoogleCertificatesApi$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/IGoogleCertificatesApi$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x1

    if-eq p1, p4, :cond_53

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4e

    const/4 v0, 0x3

    if-eq p1, v0, :cond_37

    const/4 v0, 0x4

    if-eq p1, v0, :cond_26

    const/4 v0, 0x5

    if-eq p1, v0, :cond_11

    const/4 p1, 0x0

    return p1

    :cond_11
    sget-object p1, Lcom/google/android/gms/common/GoogleCertificatesQuery;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/stable/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/GoogleCertificatesQuery;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/internal/IGoogleCertificatesApi$Stub;->isGoogleOrPlatformSigned(Lcom/google/android/gms/common/GoogleCertificatesQuery;Lcom/google/android/gms/dynamic/IObjectWrapper;)Z

    move-result p1

    goto :goto_47

    :cond_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/internal/IGoogleCertificatesApi$Stub;->isGoogleSigned(Ljava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;)Z

    move-result p1

    goto :goto_47

    :cond_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/internal/IGoogleCertificatesApi$Stub;->isGoogleReleaseSigned(Ljava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;)Z

    move-result p1

    :goto_47
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/stable/zzc;->zza(Landroid/os/Parcel;Z)V

    goto :goto_5d

    :cond_4e
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/IGoogleCertificatesApi$Stub;->getGoogleReleaseCertificates()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    goto :goto_57

    :cond_53
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/IGoogleCertificatesApi$Stub;->getGoogleCertificates()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    :goto_57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/stable/zzc;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_5d
    return p4
.end method
