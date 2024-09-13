.class public final synthetic Lcom/online/languages/study/studymaster/-$$Lambda$ExercisePagerAdapter$JOSM3aPrNOUjNCUmMJRh8TaqrBA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/online/languages/study/studymaster/ExercisePagerAdapter;

.field public final synthetic f$1:Landroid/view/ViewGroup;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/online/languages/study/studymaster/ExercisePagerAdapter;Landroid/view/ViewGroup;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/-$$Lambda$ExercisePagerAdapter$JOSM3aPrNOUjNCUmMJRh8TaqrBA;->f$0:Lcom/online/languages/study/studymaster/ExercisePagerAdapter;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/-$$Lambda$ExercisePagerAdapter$JOSM3aPrNOUjNCUmMJRh8TaqrBA;->f$1:Landroid/view/ViewGroup;

    iput p3, p0, Lcom/online/languages/study/studymaster/-$$Lambda$ExercisePagerAdapter$JOSM3aPrNOUjNCUmMJRh8TaqrBA;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/-$$Lambda$ExercisePagerAdapter$JOSM3aPrNOUjNCUmMJRh8TaqrBA;->f$0:Lcom/online/languages/study/studymaster/ExercisePagerAdapter;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/-$$Lambda$ExercisePagerAdapter$JOSM3aPrNOUjNCUmMJRh8TaqrBA;->f$1:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/online/languages/study/studymaster/-$$Lambda$ExercisePagerAdapter$JOSM3aPrNOUjNCUmMJRh8TaqrBA;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/online/languages/study/studymaster/ExercisePagerAdapter;->lambda$checkItem$1$ExercisePagerAdapter(Landroid/view/ViewGroup;I)V

    return-void
.end method
