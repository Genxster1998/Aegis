.class Lcom/mokee/aegis/fragments/PermissionsFrameFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mokee/aegis/fragments/PermissionsFrameFragment;->setViewShown(Landroid/view/View;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mokee/aegis/fragments/PermissionsFrameFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/mokee/aegis/fragments/PermissionsFrameFragment;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mokee/aegis/fragments/PermissionsFrameFragment;
    .param p2, "val$view"    # Landroid/view/View;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/mokee/aegis/fragments/PermissionsFrameFragment$1;->this$0:Lcom/mokee/aegis/fragments/PermissionsFrameFragment;

    iput-object p2, p0, Lcom/mokee/aegis/fragments/PermissionsFrameFragment$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/mokee/aegis/fragments/PermissionsFrameFragment$1;->val$view:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 115
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 111
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 107
    return-void
.end method
