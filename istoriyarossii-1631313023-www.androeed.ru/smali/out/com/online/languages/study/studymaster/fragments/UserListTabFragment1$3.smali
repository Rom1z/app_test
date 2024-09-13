.class Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1$3;
.super Ljava/lang/Object;
.source "UserListTabFragment1.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->openConfirmDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;I)V
    .registers 3

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1$3;->this$0:Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;

    iput p2, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    iget-object p1, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1$3;->this$0:Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;

    iget p2, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1$3;->val$position:I

    invoke-virtual {p1, p2}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->changeStarred(I)V

    return-void
.end method
