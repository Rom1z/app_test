.class Lcom/online/languages/study/studymaster/SearchActivity$3;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/SearchActivity;->checkStarred(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/SearchActivity;

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/SearchActivity;I)V
    .registers 3

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SearchActivity$3;->this$0:Lcom/online/languages/study/studymaster/SearchActivity;

    iput p2, p0, Lcom/online/languages/study/studymaster/SearchActivity$3;->val$result:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SearchActivity$3;->this$0:Lcom/online/languages/study/studymaster/SearchActivity;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/SearchActivity;->adapter:Lcom/online/languages/study/studymaster/adapters/SearchDataAdapter;

    iget v1, p0, Lcom/online/languages/study/studymaster/SearchActivity$3;->val$result:I

    invoke-virtual {v0, v1}, Lcom/online/languages/study/studymaster/adapters/SearchDataAdapter;->notifyItemChanged(I)V

    return-void
.end method
