.class Lcom/mokee/aegis/fragments/PermissionsFrameFragment$2;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mokee/aegis/fragments/PermissionsFrameFragment;->onCreateAdapter(Landroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/widget/RecyclerView$Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mokee/aegis/fragments/PermissionsFrameFragment;

.field final synthetic val$adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field final synthetic val$emptyView:Landroid/widget/TextView;

.field final synthetic val$recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/mokee/aegis/fragments/PermissionsFrameFragment;Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/widget/TextView;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mokee/aegis/fragments/PermissionsFrameFragment;
    .param p3, "val$emptyView"    # Landroid/widget/TextView;
    .param p4, "val$recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 141
    .local p2, "val$adapter":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<*>;"
    iput-object p1, p0, Lcom/mokee/aegis/fragments/PermissionsFrameFragment$2;->this$0:Lcom/mokee/aegis/fragments/PermissionsFrameFragment;

    iput-object p2, p0, Lcom/mokee/aegis/fragments/PermissionsFrameFragment$2;->val$adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iput-object p3, p0, Lcom/mokee/aegis/fragments/PermissionsFrameFragment$2;->val$emptyView:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/mokee/aegis/fragments/PermissionsFrameFragment$2;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method

.method private checkEmpty()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 158
    iget-object v1, p0, Lcom/mokee/aegis/fragments/PermissionsFrameFragment$2;->val$adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 159
    .local v0, "isEmpty":Z
    :goto_0
    iget-object v4, p0, Lcom/mokee/aegis/fragments/PermissionsFrameFragment$2;->val$emptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    iget-object v1, p0, Lcom/mokee/aegis/fragments/PermissionsFrameFragment$2;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 157
    return-void

    .line 158
    .end local v0    # "isEmpty":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isEmpty":Z
    goto :goto_0

    :cond_1
    move v1, v3

    .line 159
    goto :goto_1

    :cond_2
    move v3, v2

    .line 160
    goto :goto_2
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/mokee/aegis/fragments/PermissionsFrameFragment$2;->checkEmpty()V

    .line 143
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/mokee/aegis/fragments/PermissionsFrameFragment$2;->checkEmpty()V

    .line 148
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/mokee/aegis/fragments/PermissionsFrameFragment$2;->checkEmpty()V

    .line 153
    return-void
.end method
