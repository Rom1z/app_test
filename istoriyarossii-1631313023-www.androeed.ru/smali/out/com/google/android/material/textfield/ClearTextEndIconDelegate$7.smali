.class Lcom/google/android/material/textfield/ClearTextEndIconDelegate$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ClearTextEndIconDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->initAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/textfield/ClearTextEndIconDelegate;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$7;->this$0:Lcom/google/android/material/textfield/ClearTextEndIconDelegate;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$7;->this$0:Lcom/google/android/material/textfield/ClearTextEndIconDelegate;

    iget-object p1, p1, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    return-void
.end method
