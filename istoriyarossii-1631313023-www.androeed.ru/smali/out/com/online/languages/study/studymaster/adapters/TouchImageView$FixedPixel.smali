.class public final enum Lcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;
.super Ljava/lang/Enum;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/online/languages/study/studymaster/adapters/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FixedPixel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;

.field public static final enum BOTTOM_RIGHT:Lcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;

.field public static final enum CENTER:Lcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;

.field public static final enum TOP_LEFT:Lcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;

    const-string v1, "CENTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;->CENTER:Lcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;

    new-instance v1, Lcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;

    const-string v3, "TOP_LEFT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;->TOP_LEFT:Lcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;

    new-instance v3, Lcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;

    const-string v5, "BOTTOM_RIGHT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;->BOTTOM_RIGHT:Lcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;->$VALUES:[Lcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;

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

.method public static valueOf(Ljava/lang/String;)Lcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;
    .registers 2

    const-class v0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;

    return-object p0
.end method

.method public static values()[Lcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;
    .registers 1

    sget-object v0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;->$VALUES:[Lcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;

    invoke-virtual {v0}, [Lcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;

    return-object v0
.end method
