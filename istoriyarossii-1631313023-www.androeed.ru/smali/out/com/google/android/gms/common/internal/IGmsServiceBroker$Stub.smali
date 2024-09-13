.class public abstract Lcom/google/android/gms/common/internal/IGmsServiceBroker$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/common/internal/IGmsServiceBroker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/IGmsServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/IGmsServiceBroker$Stub$zza;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/common/internal/IGmsServiceBroker$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/IGmsServiceBroker;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/gms/common/internal/IGmsServiceBroker;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/google/android/gms/common/internal/IGmsServiceBroker;

    return-object v0

    :cond_13
    new-instance v0, Lcom/google/android/gms/common/internal/IGmsServiceBroker$Stub$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/IGmsServiceBroker$Stub$zza;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method protected getLegacyService(ILcom/google/android/gms/common/internal/IGmsCallbacks;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v11, p0

    move/from16 v1, p1

    move-object/from16 v0, p2

    const v2, 0xffffff

    if-le v1, v2, :cond_f

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :cond_f
    const-string v2, "com.google.android.gms.common.internal.IGmsServiceBroker"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/IGmsCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/IGmsCallbacks;

    move-result-object v2

    const/16 v3, 0x2e

    const/4 v12, 0x1

    const/4 v4, 0x0

    if-ne v1, v3, :cond_36

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_31

    sget-object v1, Lcom/google/android/gms/common/internal/GetServiceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/common/internal/GetServiceRequest;

    :cond_31
    invoke-virtual {p0, v2, v4}, Lcom/google/android/gms/common/internal/IGmsServiceBroker$Stub;->getService(Lcom/google/android/gms/common/internal/IGmsCallbacks;Lcom/google/android/gms/common/internal/GetServiceRequest;)V

    goto/16 :goto_152

    :cond_36
    const/16 v3, 0x2f

    if-ne v1, v3, :cond_4e

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_49

    sget-object v1, Lcom/google/android/gms/common/internal/ValidateAccountRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/common/internal/ValidateAccountRequest;

    :cond_49
    invoke-virtual {p0, v2, v4}, Lcom/google/android/gms/common/internal/IGmsServiceBroker$Stub;->validateAccount(Lcom/google/android/gms/common/internal/IGmsCallbacks;Lcom/google/android/gms/common/internal/ValidateAccountRequest;)V

    goto/16 :goto_152

    :cond_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const/4 v5, 0x4

    if-eq v1, v5, :cond_5a

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    goto :goto_5b

    :cond_5a
    move-object v5, v4

    :goto_5b
    if-eq v1, v12, :cond_120

    const/4 v6, 0x2

    if-eq v1, v6, :cond_106

    const/16 v6, 0x17

    if-eq v1, v6, :cond_106

    const/16 v6, 0x19

    if-eq v1, v6, :cond_106

    const/16 v6, 0x1b

    if-eq v1, v6, :cond_106

    const/16 v6, 0x1e

    if-eq v1, v6, :cond_e5

    const/16 v6, 0x22

    if-eq v1, v6, :cond_de

    const/16 v6, 0x29

    if-eq v1, v6, :cond_106

    const/16 v6, 0x2b

    if-eq v1, v6, :cond_106

    const/16 v6, 0x25

    if-eq v1, v6, :cond_106

    const/16 v6, 0x26

    if-eq v1, v6, :cond_106

    packed-switch v1, :pswitch_data_156

    goto/16 :goto_119

    :pswitch_89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_9f

    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object v8, v0

    move-object v7, v4

    move-object v10, v7

    goto :goto_a2

    :cond_9f
    move-object v7, v4

    move-object v8, v7

    move-object v10, v8

    :goto_a2
    move-object v13, v10

    move-object v9, v6

    move-object v6, v13

    goto/16 :goto_145

    :pswitch_a7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    move-object v8, v4

    goto/16 :goto_11c

    :pswitch_b3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_d9

    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object v13, v10

    move-object v10, v8

    goto/16 :goto_13e

    :cond_d9
    move-object v13, v10

    move-object v10, v8

    move-object v8, v4

    goto/16 :goto_145

    :cond_de
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    move-object v7, v4

    goto :goto_11b

    :cond_e5
    :pswitch_e5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_fe

    sget-object v8, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object v8, v0

    move-object v9, v4

    goto :goto_100

    :cond_fe
    move-object v8, v4

    move-object v9, v8

    :goto_100
    move-object v10, v9

    move-object v13, v10

    move-object v14, v7

    move-object v7, v6

    move-object v6, v14

    goto :goto_145

    :cond_106
    :pswitch_106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_119

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object v8, v0

    move-object v6, v4

    move-object v7, v6

    move-object v9, v7

    goto :goto_11d

    :cond_119
    :goto_119
    move-object v6, v4

    move-object v7, v6

    :goto_11b
    move-object v8, v7

    :goto_11c
    move-object v9, v8

    :goto_11d
    move-object v10, v9

    move-object v13, v10

    goto :goto_145

    :cond_120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_140

    sget-object v9, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object v9, v4

    move-object v13, v9

    move-object v10, v6

    move-object v6, v8

    :goto_13e
    move-object v8, v0

    goto :goto_145

    :cond_140
    move-object v9, v4

    move-object v13, v9

    move-object v10, v6

    move-object v6, v8

    move-object v8, v13

    :goto_145
    move-object v0, p0

    move/from16 v1, p1

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v13

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/gms/common/internal/IGmsServiceBroker$Stub;->getLegacyService(ILcom/google/android/gms/common/internal/IGmsCallbacks;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    :goto_152
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_data_156
    .packed-switch 0x5
        :pswitch_106
        :pswitch_106
        :pswitch_106
        :pswitch_106
        :pswitch_b3
        :pswitch_a7
        :pswitch_106
        :pswitch_106
        :pswitch_106
        :pswitch_106
        :pswitch_106
        :pswitch_106
        :pswitch_106
        :pswitch_106
        :pswitch_89
        :pswitch_e5
    .end packed-switch
.end method

.method protected validateAccount(Lcom/google/android/gms/common/internal/IGmsCallbacks;Lcom/google/android/gms/common/internal/ValidateAccountRequest;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
