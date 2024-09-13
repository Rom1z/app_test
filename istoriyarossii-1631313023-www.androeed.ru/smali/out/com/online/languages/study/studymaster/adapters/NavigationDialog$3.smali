.class Lcom/online/languages/study/studymaster/adapters/NavigationDialog$3;
.super Ljava/lang/Object;
.source "NavigationDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/adapters/NavigationDialog;->createDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/adapters/NavigationDialog;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/adapters/NavigationDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/NavigationDialog$3;->this$0:Lcom/online/languages/study/studymaster/adapters/NavigationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/NavigationDialog$3;->this$0:Lcom/online/languages/study/studymaster/adapters/NavigationDialog;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/online/languages/study/studymaster/adapters/NavigationDialog;->dismissDialog(I)V

    return-void
.end method
