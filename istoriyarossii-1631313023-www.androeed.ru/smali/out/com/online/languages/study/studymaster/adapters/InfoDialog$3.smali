.class Lcom/online/languages/study/studymaster/adapters/InfoDialog$3;
.super Ljava/lang/Object;
.source "InfoDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/adapters/InfoDialog;->simpleDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/adapters/InfoDialog;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/adapters/InfoDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/InfoDialog$3;->this$0:Lcom/online/languages/study/studymaster/adapters/InfoDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
