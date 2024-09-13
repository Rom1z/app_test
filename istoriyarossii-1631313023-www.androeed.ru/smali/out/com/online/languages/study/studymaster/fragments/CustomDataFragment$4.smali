.class Lcom/online/languages/study/studymaster/fragments/CustomDataFragment$4;
.super Ljava/lang/Object;
.source "CustomDataFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/fragments/CustomDataFragment;->checkDataList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/fragments/CustomDataFragment;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/fragments/CustomDataFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/CustomDataFragment$4;->this$0:Lcom/online/languages/study/studymaster/fragments/CustomDataFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/CustomDataFragment$4;->this$0:Lcom/online/languages/study/studymaster/fragments/CustomDataFragment;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/fragments/CustomDataFragment;->adapter:Lcom/online/languages/study/studymaster/adapters/CustomDataListAdapter;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/CustomDataListAdapter;->notifyDataSetChanged()V

    return-void
.end method
