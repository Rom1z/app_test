.class public final Lcom/google/android/gms/common/internal/BaseGmsClient$GmsCallbacks;
.super Lcom/google/android/gms/common/internal/IGmsCallbacks$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/BaseGmsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GmsCallbacks"
.end annotation


# instance fields
.field private zzrw:Lcom/google/android/gms/common/internal/BaseGmsClient;

.field private final zzrx:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/BaseGmsClient;I)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/IGmsCallbacks$Stub;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$GmsCallbacks;->zzrw:Lcom/google/android/gms/common/internal/BaseGmsClient;

    iput p2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$GmsCallbacks;->zzrx:I

    return-void
.end method


# virtual methods
.method public final onAccountValidationComplete(ILandroid/os/Bundle;)V
    .registers 4

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string p2, "GmsClient"

    const-string v0, "received deprecated onAccountValidationComplete callback, ignoring"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final onPostInitComplete(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$GmsCallbacks;->zzrw:Lcom/google/android/gms/common/internal/BaseGmsClient;

    const-string v1, "onPostInitComplete can be called only once per call to getRemoteService"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$GmsCallbacks;->zzrw:Lcom/google/android/gms/common/internal/BaseGmsClient;

    iget v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$GmsCallbacks;->zzrx:I

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->onPostInitHandler(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$GmsCallbacks;->zzrw:Lcom/google/android/gms/common/internal/BaseGmsClient;

    return-void
.end method

.method public final onPostInitCompleteWithConnectionInfo(ILandroid/os/IBinder;Lcom/google/android/gms/common/internal/ConnectionInfo;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$GmsCallbacks;->zzrw:Lcom/google/android/gms/common/internal/BaseGmsClient;

    const-string v1, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$GmsCallbacks;->zzrw:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {v0, p3}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza(Lcom/google/android/gms/common/internal/BaseGmsClient;Lcom/google/android/gms/common/internal/ConnectionInfo;)V

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/ConnectionInfo;->getResolutionBundle()Landroid/os/Bundle;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/BaseGmsClient$GmsCallbacks;->onPostInitComplete(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    return-void
.end method
