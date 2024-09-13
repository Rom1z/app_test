.class Lcom/online/languages/study/studymaster/ExerciseActivity$1;
.super Ljava/lang/Object;
.source "ExerciseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/ExerciseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/ExerciseActivity;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/ExerciseActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ExerciseActivity$1;->this$0:Lcom/online/languages/study/studymaster/ExerciseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity$1;->this$0:Lcom/online/languages/study/studymaster/ExerciseActivity;

    new-instance v1, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;

    sget-object v2, Lcom/online/languages/study/studymaster/ExerciseActivity;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/online/languages/study/studymaster/ExerciseActivity$1;->this$0:Lcom/online/languages/study/studymaster/ExerciseActivity;

    iget-object v3, v3, Lcom/online/languages/study/studymaster/ExerciseActivity;->originWordsList:Ljava/util/ArrayList;

    sget v4, Lcom/online/languages/study/studymaster/ExerciseActivity;->exType:I

    invoke-direct {v1, v2, v3, v4}, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    iput-object v1, v0, Lcom/online/languages/study/studymaster/ExerciseActivity;->exerciseAllData:Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity$1;->this$0:Lcom/online/languages/study/studymaster/ExerciseActivity;

    invoke-static {v0}, Lcom/online/languages/study/studymaster/ExerciseActivity;->access$000(Lcom/online/languages/study/studymaster/ExerciseActivity;)V

    return-void
.end method
