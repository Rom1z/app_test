.class Lcom/online/languages/study/studymaster/MapActivity$1;
.super Ljava/lang/Object;
.source "MapActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/MapActivity;->showInfoDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/MapActivity;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/MapActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/MapActivity$1;->this$0:Lcom/online/languages/study/studymaster/MapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
