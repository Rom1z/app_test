.class final enum Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;
.super Ljava/lang/Enum;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/online/languages/study/studymaster/adapters/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;

.field public static final enum ANIMATE_ZOOM:Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;

.field public static final enum DRAG:Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;

.field public static final enum FLING:Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;

.field public static final enum NONE:Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;

.field public static final enum ZOOM:Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;->NONE:Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;

    new-instance v1, Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;

    const-string v3, "DRAG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;->DRAG:Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;

    new-instance v3, Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;

    const-string v5, "ZOOM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;->ZOOM:Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;

    new-instance v5, Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;

    const-string v7, "FLING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;->FLING:Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;

    new-instance v7, Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;

    const-string v9, "ANIMATE_ZOOM"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;->ANIMATE_ZOOM:Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;->$VALUES:[Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;
    .registers 2

    const-class v0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;

    return-object p0
.end method

.method public static values()[Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;
    .registers 1

    sget-object v0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;->$VALUES:[Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;

    invoke-virtual {v0}, [Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;

    return-object v0
.end method
