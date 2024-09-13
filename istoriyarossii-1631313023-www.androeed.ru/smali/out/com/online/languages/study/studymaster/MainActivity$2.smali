.class Lcom/online/languages/study/studymaster/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/MainActivity;->bottomNavDisplay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/MainActivity;

.field final synthetic val$wrap:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/MainActivity;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/online/languages/study/studymaster/MainActivity$2;->this$0:Lcom/online/languages/study/studymaster/MainActivity;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/MainActivity$2;->val$wrap:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity$2;->this$0:Lcom/online/languages/study/studymaster/MainActivity;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/MainActivity;->bottomNavBox:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/MainActivity$2;->this$0:Lcom/online/languages/study/studymaster/MainActivity;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/MainActivity;->bottomNavBox:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/MainActivity$2;->val$wrap:Landroid/view/View;

    add-int/lit8 v0, v0, -0x5

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
