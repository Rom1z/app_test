.class public final enum Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;
.super Ljava/lang/Enum;
.source "RoundedCornersTransformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CornerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

.field public static final enum ALL:Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

.field public static final enum BOTTOM:Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

.field public static final enum BOTTOM_LEFT:Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

.field public static final enum BOTTOM_RIGHT:Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

.field public static final enum DIAGONAL_FROM_TOP_LEFT:Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

.field public static final enum DIAGONAL_FROM_TOP_RIGHT:Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

.field public static final enum LEFT:Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

.field public static final enum OTHER_BOTTOM_LEFT:Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

.field public static final enum OTHER_BOTTOM_RIGHT:Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

.field public static final enum OTHER_TOP_LEFT:Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

.field public static final enum OTHER_TOP_RIGHT:Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

.field public static final enum RIGHT:Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

.field public static final enum TOP:Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

.field public static final enum TOP_LEFT:Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

.field public static final enum TOP_RIGHT:Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;


# direct methods
.method static constructor <clinit>()V
    .registers 18

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

    const-string v1, "ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;->ALL:Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

    new-instance v1, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

    const-string v3, "TOP_LEFT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;->TOP_LEFT:Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

    new-instance v3, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

    const-string v5, "TOP_RIGHT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;->TOP_RIGHT:Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

    new-instance v5, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

    const-string v7, "BOTTOM_LEFT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;->BOTTOM_LEFT:Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

    new-instance v7, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

    const-string v9, "BOTTOM_RIGHT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;->BOTTOM_RIGHT:Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

    new-instance v9, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

    const-string v11, "TOP"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;->TOP:Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

    new-instance v11, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

    const-string v13, "BOTTOM"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;->BOTTOM:Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

    new-instance v13, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

    const-string v15, "LEFT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;->LEFT:Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

    new-instance v15, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

    const-string v14, "RIGHT"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;->RIGHT:Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

    new-instance v14, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

    const-string v12, "OTHER_TOP_LEFT"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;->OTHER_TOP_LEFT:Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

    new-instance v12, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

    const-string v10, "OTHER_TOP_RIGHT"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;->OTHER_TOP_RIGHT:Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

    new-instance v10, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

    const-string v8, "OTHER_BOTTOM_LEFT"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;->OTHER_BOTTOM_LEFT:Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

    new-instance v8, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

    const-string v6, "OTHER_BOTTOM_RIGHT"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;->OTHER_BOTTOM_RIGHT:Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

    new-instance v6, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

    const-string v4, "DIAGONAL_FROM_TOP_LEFT"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;->DIAGONAL_FROM_TOP_LEFT:Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

    new-instance v4, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

    const-string v2, "DIAGONAL_FROM_TOP_RIGHT"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;->DIAGONAL_FROM_TOP_RIGHT:Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

    const/16 v2, 0xf

    new-array v2, v2, [Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

    const/16 v16, 0x0

    aput-object v0, v2, v16

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    aput-object v4, v2, v6

    sput-object v2, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;->$VALUES:[Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;
    .registers 2

    const-class v0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

    return-object p0
.end method

.method public static values()[Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;
    .registers 1

    sget-object v0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;->$VALUES:[Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

    invoke-virtual {v0}, [Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

    return-object v0
.end method
