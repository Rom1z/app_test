.class final Landroidx/databinding/adapters/RadioGroupBindingAdapter$1;
.super Ljava/lang/Object;
.source "RadioGroupBindingAdapter.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/databinding/adapters/RadioGroupBindingAdapter;->setListeners(Landroid/widget/RadioGroup;Landroid/widget/RadioGroup$OnCheckedChangeListener;Landroidx/databinding/InverseBindingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$attrChange:Landroidx/databinding/InverseBindingListener;

.field final synthetic val$listener:Landroid/widget/RadioGroup$OnCheckedChangeListener;


# direct methods
.method constructor <init>(Landroid/widget/RadioGroup$OnCheckedChangeListener;Landroidx/databinding/InverseBindingListener;)V
    .registers 3

    iput-object p1, p0, Landroidx/databinding/adapters/RadioGroupBindingAdapter$1;->val$listener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    iput-object p2, p0, Landroidx/databinding/adapters/RadioGroupBindingAdapter$1;->val$attrChange:Landroidx/databinding/InverseBindingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 4

    iget-object v0, p0, Landroidx/databinding/adapters/RadioGroupBindingAdapter$1;->val$listener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2}, Landroid/widget/RadioGroup$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/RadioGroup;I)V

    :cond_7
    iget-object p1, p0, Landroidx/databinding/adapters/RadioGroupBindingAdapter$1;->val$attrChange:Landroidx/databinding/InverseBindingListener;

    invoke-interface {p1}, Landroidx/databinding/InverseBindingListener;->onChange()V

    return-void
.end method
