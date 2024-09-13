.class Lcom/online/languages/study/studymaster/ExerciseActivity$2;
.super Ljava/lang/Object;
.source "ExerciseActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


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

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ExerciseActivity$2;->this$0:Lcom/online/languages/study/studymaster/ExerciseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    return-void
.end method

.method public onPageSelected(I)V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity$2;->this$0:Lcom/online/languages/study/studymaster/ExerciseActivity;

    invoke-static {v0, p1}, Lcom/online/languages/study/studymaster/ExerciseActivity;->access$100(Lcom/online/languages/study/studymaster/ExerciseActivity;I)V

    return-void
.end method
