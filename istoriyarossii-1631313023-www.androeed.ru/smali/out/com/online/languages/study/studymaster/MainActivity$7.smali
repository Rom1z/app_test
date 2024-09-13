.class Lcom/online/languages/study/studymaster/MainActivity$7;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/MainActivity;->openPageFromMenu(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/MainActivity;

.field final synthetic val$act:I


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/MainActivity;I)V
    .registers 3

    iput-object p1, p0, Lcom/online/languages/study/studymaster/MainActivity$7;->this$0:Lcom/online/languages/study/studymaster/MainActivity;

    iput p2, p0, Lcom/online/languages/study/studymaster/MainActivity$7;->val$act:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity$7;->this$0:Lcom/online/languages/study/studymaster/MainActivity;

    iget v1, p0, Lcom/online/languages/study/studymaster/MainActivity$7;->val$act:I

    invoke-virtual {v0, v1}, Lcom/online/languages/study/studymaster/MainActivity;->openPage(I)V

    return-void
.end method
