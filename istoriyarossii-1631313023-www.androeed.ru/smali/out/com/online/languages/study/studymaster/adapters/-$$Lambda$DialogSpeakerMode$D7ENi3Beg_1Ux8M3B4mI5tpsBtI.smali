.class public final synthetic Lcom/online/languages/study/studymaster/adapters/-$$Lambda$DialogSpeakerMode$D7ENi3Beg_1Ux8M3B4mI5tpsBtI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/online/languages/study/studymaster/adapters/DialogSpeakerMode;

.field public final synthetic f$1:Landroid/widget/RadioButton;

.field public final synthetic f$2:Landroid/widget/RadioButton;

.field public final synthetic f$3:Landroid/widget/RadioButton;

.field public final synthetic f$4:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/online/languages/study/studymaster/adapters/DialogSpeakerMode;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroidx/appcompat/app/AlertDialog;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/-$$Lambda$DialogSpeakerMode$D7ENi3Beg_1Ux8M3B4mI5tpsBtI;->f$0:Lcom/online/languages/study/studymaster/adapters/DialogSpeakerMode;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/adapters/-$$Lambda$DialogSpeakerMode$D7ENi3Beg_1Ux8M3B4mI5tpsBtI;->f$1:Landroid/widget/RadioButton;

    iput-object p3, p0, Lcom/online/languages/study/studymaster/adapters/-$$Lambda$DialogSpeakerMode$D7ENi3Beg_1Ux8M3B4mI5tpsBtI;->f$2:Landroid/widget/RadioButton;

    iput-object p4, p0, Lcom/online/languages/study/studymaster/adapters/-$$Lambda$DialogSpeakerMode$D7ENi3Beg_1Ux8M3B4mI5tpsBtI;->f$3:Landroid/widget/RadioButton;

    iput-object p5, p0, Lcom/online/languages/study/studymaster/adapters/-$$Lambda$DialogSpeakerMode$D7ENi3Beg_1Ux8M3B4mI5tpsBtI;->f$4:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 8

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/-$$Lambda$DialogSpeakerMode$D7ENi3Beg_1Ux8M3B4mI5tpsBtI;->f$0:Lcom/online/languages/study/studymaster/adapters/DialogSpeakerMode;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/-$$Lambda$DialogSpeakerMode$D7ENi3Beg_1Ux8M3B4mI5tpsBtI;->f$1:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/adapters/-$$Lambda$DialogSpeakerMode$D7ENi3Beg_1Ux8M3B4mI5tpsBtI;->f$2:Landroid/widget/RadioButton;

    iget-object v3, p0, Lcom/online/languages/study/studymaster/adapters/-$$Lambda$DialogSpeakerMode$D7ENi3Beg_1Ux8M3B4mI5tpsBtI;->f$3:Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/online/languages/study/studymaster/adapters/-$$Lambda$DialogSpeakerMode$D7ENi3Beg_1Ux8M3B4mI5tpsBtI;->f$4:Landroidx/appcompat/app/AlertDialog;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/online/languages/study/studymaster/adapters/DialogSpeakerMode;->lambda$createDialog2$8$DialogSpeakerMode(Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method
