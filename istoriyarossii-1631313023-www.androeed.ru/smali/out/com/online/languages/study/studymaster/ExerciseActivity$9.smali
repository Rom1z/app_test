.class Lcom/online/languages/study/studymaster/ExerciseActivity$9;
.super Ljava/lang/Object;
.source "ExerciseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/ExerciseActivity;->restartFromMenu()V
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

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ExerciseActivity$9;->this$0:Lcom/online/languages/study/studymaster/ExerciseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity$9;->this$0:Lcom/online/languages/study/studymaster/ExerciseActivity;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/ExerciseActivity;->restartExercise()V

    return-void
.end method
