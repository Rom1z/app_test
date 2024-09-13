.class public final synthetic Lcom/online/languages/study/studymaster/-$$Lambda$bLlzwD-UVkI0BXuC6qf1b2EMny4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/online/languages/study/studymaster/ExerciseActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/online/languages/study/studymaster/ExerciseActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/-$$Lambda$bLlzwD-UVkI0BXuC6qf1b2EMny4;->f$0:Lcom/online/languages/study/studymaster/ExerciseActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/-$$Lambda$bLlzwD-UVkI0BXuC6qf1b2EMny4;->f$0:Lcom/online/languages/study/studymaster/ExerciseActivity;

    invoke-virtual {v0, p1}, Lcom/online/languages/study/studymaster/ExerciseActivity;->exShowResult(Landroid/view/View;)V

    return-void
.end method
