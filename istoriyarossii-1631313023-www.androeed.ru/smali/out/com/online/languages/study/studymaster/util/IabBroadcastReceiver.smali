.class public Lcom/online/languages/study/studymaster/util/IabBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IabBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/online/languages/study/studymaster/util/IabBroadcastReceiver$IabBroadcastListener;
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.android.vending.billing.PURCHASES_UPDATED"


# instance fields
.field private final mListener:Lcom/online/languages/study/studymaster/util/IabBroadcastReceiver$IabBroadcastListener;


# direct methods
.method public constructor <init>(Lcom/online/languages/study/studymaster/util/IabBroadcastReceiver$IabBroadcastListener;)V
    .registers 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/util/IabBroadcastReceiver;->mListener:Lcom/online/languages/study/studymaster/util/IabBroadcastReceiver$IabBroadcastListener;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    iget-object p1, p0, Lcom/online/languages/study/studymaster/util/IabBroadcastReceiver;->mListener:Lcom/online/languages/study/studymaster/util/IabBroadcastReceiver$IabBroadcastListener;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/online/languages/study/studymaster/util/IabBroadcastReceiver$IabBroadcastListener;->receivedBroadcast()V

    :cond_7
    return-void
.end method
