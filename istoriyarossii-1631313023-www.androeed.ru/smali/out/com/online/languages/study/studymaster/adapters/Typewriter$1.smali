.class Lcom/online/languages/study/studymaster/adapters/Typewriter$1;
.super Ljava/lang/Object;
.source "Typewriter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/online/languages/study/studymaster/adapters/Typewriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/adapters/Typewriter;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/adapters/Typewriter;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/Typewriter$1;->this$0:Lcom/online/languages/study/studymaster/adapters/Typewriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/Typewriter$1;->this$0:Lcom/online/languages/study/studymaster/adapters/Typewriter;

    invoke-static {v0}, Lcom/online/languages/study/studymaster/adapters/Typewriter;->access$100(Lcom/online/languages/study/studymaster/adapters/Typewriter;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/online/languages/study/studymaster/adapters/Typewriter$1;->this$0:Lcom/online/languages/study/studymaster/adapters/Typewriter;

    invoke-static {v2}, Lcom/online/languages/study/studymaster/adapters/Typewriter;->access$008(Lcom/online/languages/study/studymaster/adapters/Typewriter;)I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/online/languages/study/studymaster/adapters/Typewriter;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/Typewriter$1;->this$0:Lcom/online/languages/study/studymaster/adapters/Typewriter;

    invoke-static {v0}, Lcom/online/languages/study/studymaster/adapters/Typewriter;->access$000(Lcom/online/languages/study/studymaster/adapters/Typewriter;)I

    move-result v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/Typewriter$1;->this$0:Lcom/online/languages/study/studymaster/adapters/Typewriter;

    invoke-static {v1}, Lcom/online/languages/study/studymaster/adapters/Typewriter;->access$100(Lcom/online/languages/study/studymaster/adapters/Typewriter;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt v0, v1, :cond_3b

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/Typewriter$1;->this$0:Lcom/online/languages/study/studymaster/adapters/Typewriter;

    invoke-static {v0}, Lcom/online/languages/study/studymaster/adapters/Typewriter;->access$400(Lcom/online/languages/study/studymaster/adapters/Typewriter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/Typewriter$1;->this$0:Lcom/online/languages/study/studymaster/adapters/Typewriter;

    invoke-static {v1}, Lcom/online/languages/study/studymaster/adapters/Typewriter;->access$200(Lcom/online/languages/study/studymaster/adapters/Typewriter;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/online/languages/study/studymaster/adapters/Typewriter$1;->this$0:Lcom/online/languages/study/studymaster/adapters/Typewriter;

    invoke-static {v2}, Lcom/online/languages/study/studymaster/adapters/Typewriter;->access$300(Lcom/online/languages/study/studymaster/adapters/Typewriter;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3b
    return-void
.end method
