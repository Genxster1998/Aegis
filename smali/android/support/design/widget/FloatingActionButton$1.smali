.class Landroid/support/design/widget/FloatingActionButton$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/FloatingActionButton;->wrapOnVisibilityChangedListener(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;)Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/FloatingActionButton;

.field final synthetic val$listener:Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;


# direct methods
.method constructor <init>(Landroid/support/design/widget/FloatingActionButton;Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/design/widget/FloatingActionButton;
    .param p2, "val$listener"    # Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;

    .prologue
    .line 420
    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButton$1;->this$0:Landroid/support/design/widget/FloatingActionButton;

    iput-object p2, p0, Landroid/support/design/widget/FloatingActionButton$1;->val$listener:Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHidden()V
    .locals 2

    .prologue
    .line 428
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton$1;->val$listener:Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;

    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButton$1;->this$0:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;->onHidden(Landroid/support/design/widget/FloatingActionButton;)V

    .line 427
    return-void
.end method

.method public onShown()V
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton$1;->val$listener:Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;

    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButton$1;->this$0:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;->onShown(Landroid/support/design/widget/FloatingActionButton;)V

    .line 422
    return-void
.end method