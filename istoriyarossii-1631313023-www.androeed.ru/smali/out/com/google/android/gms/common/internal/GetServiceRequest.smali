.class public Lcom/google/android/gms/common/internal/GetServiceRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/internal/GetServiceRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final version:I

.field private final zzst:I

.field private zzsu:I

.field private zzsv:Ljava/lang/String;

.field private zzsw:Landroid/os/IBinder;

.field private zzsx:[Lcom/google/android/gms/common/api/Scope;

.field private zzsy:Landroid/os/Bundle;

.field private zzsz:Landroid/accounts/Account;

.field private zzta:[Lcom/google/android/gms/common/Feature;

.field private zztb:[Lcom/google/android/gms/common/Feature;

.field private zztc:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/common/internal/GetServiceRequestCreator;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/GetServiceRequestCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/GetServiceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->version:I

    sget v0, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    iput v0, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzsu:I

    iput p1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzst:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zztc:Z

    return-void
.end method

.method constructor <init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[Lcom/google/android/gms/common/Feature;[Lcom/google/android/gms/common/Feature;Z)V
    .registers 12

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->version:I

    iput p2, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzst:I

    iput p3, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzsu:I

    const-string p2, "com.google.android.gms"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_14

    iput-object p2, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzsv:Ljava/lang/String;

    goto :goto_16

    :cond_14
    iput-object p4, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzsv:Ljava/lang/String;

    :goto_16
    const/4 p2, 0x2

    if-ge p1, p2, :cond_20

    invoke-static {p5}, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzb(Landroid/os/IBinder;)Landroid/accounts/Account;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzsz:Landroid/accounts/Account;

    goto :goto_24

    :cond_20
    iput-object p5, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzsw:Landroid/os/IBinder;

    iput-object p8, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzsz:Landroid/accounts/Account;

    :goto_24
    iput-object p6, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzsx:[Lcom/google/android/gms/common/api/Scope;

    iput-object p7, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzsy:Landroid/os/Bundle;

    iput-object p9, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzta:[Lcom/google/android/gms/common/Feature;

    iput-object p10, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zztb:[Lcom/google/android/gms/common/Feature;

    iput-boolean p11, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zztc:Z

    return-void
.end method

.method public static getCreator()Landroid/os/Parcelable$Creator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/internal/GetServiceRequest;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/common/internal/GetServiceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-object v0
.end method

.method private static zzb(Landroid/os/IBinder;)Landroid/accounts/Account;
    .registers 1

    if-eqz p0, :cond_b

    invoke-static {p0}, Lcom/google/android/gms/common/internal/IAccountAccessor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/IAccountAccessor;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/AccountAccessor;->getAccountBinderSafe(Lcom/google/android/gms/common/internal/IAccountAccessor;)Landroid/accounts/Account;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method


# virtual methods
.method public getAuthenticatedAccount()Landroid/accounts/Account;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzsw:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzb(Landroid/os/IBinder;)Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public getCallingPackage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzsv:Ljava/lang/String;

    return-object v0
.end method

.method public getClientApiFeatures()[Lcom/google/android/gms/common/Feature;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zztb:[Lcom/google/android/gms/common/Feature;

    return-object v0
.end method

.method public getClientLibraryVersion()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzsu:I

    return v0
.end method

.method public getClientRequestedAccount()Landroid/accounts/Account;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzsz:Landroid/accounts/Account;

    return-object v0
.end method

.method public getClientRequiredFeatures()[Lcom/google/android/gms/common/Feature;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzta:[Lcom/google/android/gms/common/Feature;

    return-object v0
.end method

.method public getExtraArgs()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzsy:Landroid/os/Bundle;

    return-object v0
.end method

.method public getScopes()[Lcom/google/android/gms/common/api/Scope;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzsx:[Lcom/google/android/gms/common/api/Scope;

    return-object v0
.end method

.method public getServiceId()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzst:I

    return v0
.end method

.method public isRequestingConnectionInfo()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zztc:Z

    return v0
.end method

.method public setAuthenticatedAccount(Lcom/google/android/gms/common/internal/IAccountAccessor;)Lcom/google/android/gms/common/internal/GetServiceRequest;
    .registers 2

    if-eqz p1, :cond_8

    invoke-interface {p1}, Lcom/google/android/gms/common/internal/IAccountAccessor;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzsw:Landroid/os/IBinder;

    :cond_8
    return-object p0
.end method

.method public setCallingPackage(Ljava/lang/String;)Lcom/google/android/gms/common/internal/GetServiceRequest;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzsv:Ljava/lang/String;

    return-object p0
.end method

.method public setClientApiFeatures([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/internal/GetServiceRequest;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zztb:[Lcom/google/android/gms/common/Feature;

    return-object p0
.end method

.method public setClientLibraryVersion(I)Lcom/google/android/gms/common/internal/GetServiceRequest;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzsu:I

    return-object p0
.end method

.method public setClientRequestedAccount(Landroid/accounts/Account;)Lcom/google/android/gms/common/internal/GetServiceRequest;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzsz:Landroid/accounts/Account;

    return-object p0
.end method

.method public setClientRequiredFeatures([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/internal/GetServiceRequest;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzta:[Lcom/google/android/gms/common/Feature;

    return-object p0
.end method

.method public setExtraArgs(Landroid/os/Bundle;)Lcom/google/android/gms/common/internal/GetServiceRequest;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzsy:Landroid/os/Bundle;

    return-object p0
.end method

.method public setRequestingConnectionInfo(Z)Lcom/google/android/gms/common/internal/GetServiceRequest;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zztc:Z

    return-object p0
.end method

.method public setScopes(Ljava/util/Collection;)Lcom/google/android/gms/common/internal/GetServiceRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)",
            "Lcom/google/android/gms/common/internal/GetServiceRequest;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/common/api/Scope;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/gms/common/api/Scope;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzsx:[Lcom/google/android/gms/common/api/Scope;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->version:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    iget v1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzst:I

    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    iget v1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzsu:I

    const/4 v2, 0x3

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzsv:Ljava/lang/String;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzsw:Landroid/os/IBinder;

    const/4 v2, 0x5

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzsx:[Lcom/google/android/gms/common/api/Scope;

    const/4 v2, 0x6

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzsy:Landroid/os/Bundle;

    const/4 v2, 0x7

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBundle(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzsz:Landroid/accounts/Account;

    const/16 v2, 0x8

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzta:[Lcom/google/android/gms/common/Feature;

    const/16 v2, 0xa

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zztb:[Lcom/google/android/gms/common/Feature;

    const/16 v2, 0xb

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    iget-boolean p2, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zztc:Z

    const/16 v1, 0xc

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
