.class Lcom/online/languages/study/studymaster/SectionActivity$1;
.super Ljava/lang/Object;
.source "SectionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/SectionActivity;->openCat(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/SectionActivity;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/SectionActivity;I)V
    .registers 3

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionActivity$1;->this$0:Lcom/online/languages/study/studymaster/SectionActivity;

    iput p2, p0, Lcom/online/languages/study/studymaster/SectionActivity$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionActivity$1;->this$0:Lcom/online/languages/study/studymaster/SectionActivity;

    iget v1, p0, Lcom/online/languages/study/studymaster/SectionActivity$1;->val$position:I

    invoke-virtual {v0, v1}, Lcom/online/languages/study/studymaster/SectionActivity;->openCatActivity(I)V

    return-void
.end method
