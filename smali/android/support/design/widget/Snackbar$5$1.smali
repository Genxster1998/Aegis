.class Landroid/support/design/widget/Snackbar$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/Snackbar$5;->onViewDetachedFromWindow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/design/widget/Snackbar$5;


# direct methods
.method constructor <init>(Landroid/support/design/widget/Snackbar$5;)V
    .locals 0
    .param p1, "this$1"    # Landroid/support/design/widget/Snackbar$5;

    .prologue
    .line 501
    iput-object p1, p0, Landroid/support/design/widget/Snackbar$5$1;->this$1:Landroid/support/design/widget/Snackbar$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 504
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$5$1;->this$1:Landroid/support/design/widget/Snackbar$5;

    iget-object v0, v0, Landroid/support/design/widget/Snackbar$5;->this$0:Landroid/support/design/widget/Snackbar;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/design/widget/Snackbar;->onViewHidden(I)V

    .line 503
    return-void
.end method
