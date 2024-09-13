.class Lcom/online/languages/study/studymaster/ExerciseActivity$11;
.super Ljava/lang/Object;
.source "ExerciseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/ExerciseActivity;->notifyNotSaved()V
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

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ExerciseActivity$11;->this$0:Lcom/online/languages/study/studymaster/ExerciseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    sget-object v0, Lcom/online/languages/study/studymaster/ExerciseActivity;->fCounterInfoBox:Landroid/widget/TextView;

    const-string v1, "<font color=\"#ffffff\">\u0421\u0442\u0430\u0442\u0438\u0441\u0442\u0438\u043a\u0430 \u043d\u0435 \u0441\u043e\u0445\u0440\u0430\u043d\u044f\u0435\u0442\u0441\u044f</font>"

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    const-string v1, "Action"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method
