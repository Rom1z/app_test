.class Lcom/online/languages/study/studymaster/ExercisePagerAdapter$1;
.super Ljava/lang/Object;
.source "ExercisePagerAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->checkItemByRadio(Landroid/view/ViewGroup;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/ExercisePagerAdapter;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/ExercisePagerAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ExercisePagerAdapter$1;->this$0:Lcom/online/languages/study/studymaster/ExercisePagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    invoke-static {}, Lcom/online/languages/study/studymaster/ExerciseActivity;->goToNextTask()V

    return-void
.end method
