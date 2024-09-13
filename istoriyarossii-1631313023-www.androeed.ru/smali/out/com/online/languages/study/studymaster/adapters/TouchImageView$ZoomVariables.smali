.class Lcom/online/languages/study/studymaster/adapters/TouchImageView$ZoomVariables;
.super Ljava/lang/Object;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/online/languages/study/studymaster/adapters/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomVariables"
.end annotation


# instance fields
.field focusX:F

.field focusY:F

.field scale:F

.field scaleType:Landroid/widget/ImageView$ScaleType;

.field final synthetic this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/adapters/TouchImageView;FFFLandroid/widget/ImageView$ScaleType;)V
    .registers 6

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$ZoomVariables;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$ZoomVariables;->scale:F

    iput p3, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$ZoomVariables;->focusX:F

    iput p4, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$ZoomVariables;->focusY:F

    iput-object p5, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$ZoomVariables;->scaleType:Landroid/widget/ImageView$ScaleType;

    return-void
.end method
