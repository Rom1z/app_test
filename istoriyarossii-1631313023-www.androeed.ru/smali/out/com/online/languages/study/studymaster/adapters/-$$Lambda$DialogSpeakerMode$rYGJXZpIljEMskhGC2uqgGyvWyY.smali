.class public final synthetic Lcom/online/languages/study/studymaster/adapters/-$$Lambda$DialogSpeakerMode$rYGJXZpIljEMskhGC2uqgGyvWyY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/online/languages/study/studymaster/adapters/DialogSpeakerMode;

.field public final synthetic f$1:Landroid/widget/RadioButton;

.field public final synthetic f$2:Landroid/widget/RadioButton;

.field public final synthetic f$3:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/online/languages/study/studymaster/adapters/DialogSpeakerMode;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroidx/appcompat/app/AlertDialog;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/-$$Lambda$DialogSpeakerMode$rYGJXZpIljEMskhGC2uqgGyvWyY;->f$0:Lcom/online/languages/study/studymaster/adapters/DialogSpeakerMode;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/adapters/-$$Lambda$DialogSpeakerMode$rYGJXZpIljEMskhGC2uqgGyvWyY;->f$1:Landroid/widget/RadioButton;

    iput-object p3, p0, Lcom/online/languages/study/studymaster/adapters/-$$Lambda$DialogSpeakerMode$rYGJXZpIljEMskhGC2uqgGyvWyY;->f$2:Landroid/widget/RadioButton;

    iput-object p4, p0, Lcom/online/languages/study/studymaster/adapters/-$$Lambda$DialogSpeakerMode$rYGJXZpIljEMskhGC2uqgGyvWyY;->f$3:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/-$$Lambda$DialogSpeakerMode$rYGJXZpIljEMskhGC2uqgGyvWyY;->f$0:Lcom/online/languages/study/studymaster/adapters/DialogSpeakerMode;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/-$$Lambda$DialogSpeakerMode$rYGJXZpIljEMskhGC2uqgGyvWyY;->f$1:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/adapters/-$$Lambda$DialogSpeakerMode$rYGJXZpIljEMskhGC2uqgGyvWyY;->f$2:Landroid/widget/RadioButton;

    iget-object v3, p0, Lcom/online/languages/study/studymaster/adapters/-$$Lambda$DialogSpeakerMode$rYGJXZpIljEMskhGC2uqgGyvWyY;->f$3:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/online/languages/study/studymaster/adapters/DialogSpeakerMode;->lambda$createDialog2$6$DialogSpeakerMode(Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method
