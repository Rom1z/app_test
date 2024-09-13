.class Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1$2;
.super Ljava/lang/Object;
.source "UserListTabFragment1.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1$2;->this$0:Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 3

    iget-object p1, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1$2;->this$0:Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->access$100(Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;Ljava/lang/Boolean;)V

    return-void
.end method
