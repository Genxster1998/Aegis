.class Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v14/preference/PreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DividerDecoration"
.end annotation


# instance fields
.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field final synthetic this$0:Landroid/support/v14/preference/PreferenceFragment;


# direct methods
.method private constructor <init>(Landroid/support/v14/preference/PreferenceFragment;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v14/preference/PreferenceFragment;

    .prologue
    .line 778
    iput-object p1, p0, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->this$0:Landroid/support/v14/preference/PreferenceFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v14/preference/PreferenceFragment;Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v14/preference/PreferenceFragment;

    .prologue
    invoke-direct {p0, p1}, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;-><init>(Landroid/support/v14/preference/PreferenceFragment;)V

    return-void
.end method

.method private shouldDrawDividerBelow(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)Z
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    const/4 v6, 0x0

    .line 809
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 810
    .local v1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    instance-of v7, v1, Landroid/support/v7/preference/PreferenceViewHolder;

    if-eqz v7, :cond_0

    .line 811
    check-cast v1, Landroid/support/v7/preference/PreferenceViewHolder;

    .end local v1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceViewHolder;->isDividerAllowedBelow()Z

    move-result v0

    .line 812
    .local v0, "dividerAllowedBelow":Z
    :goto_0
    if-nez v0, :cond_1

    .line 813
    return v6

    .end local v0    # "dividerAllowedBelow":Z
    .restart local v1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_0
    move v0, v6

    .line 810
    goto :goto_0

    .line 815
    .end local v1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .restart local v0    # "dividerAllowedBelow":Z
    :cond_1
    const/4 v3, 0x1

    .line 816
    .local v3, "nextAllowed":Z
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 817
    .local v2, "index":I
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_2

    .line 818
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p2, v6}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 819
    .local v5, "nextView":Landroid/view/View;
    invoke-virtual {p2, v5}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    .line 820
    .local v4, "nextHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    instance-of v6, v4, Landroid/support/v7/preference/PreferenceViewHolder;

    if-eqz v6, :cond_3

    .line 821
    check-cast v4, Landroid/support/v7/preference/PreferenceViewHolder;

    .end local v4    # "nextHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v4}, Landroid/support/v7/preference/PreferenceViewHolder;->isDividerAllowedAbove()Z

    move-result v3

    .line 823
    .end local v3    # "nextAllowed":Z
    .end local v5    # "nextView":Landroid/view/View;
    :cond_2
    :goto_1
    return v3

    .line 820
    .restart local v3    # "nextAllowed":Z
    .restart local v4    # "nextHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .restart local v5    # "nextView":Landroid/view/View;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 803
    invoke-direct {p0, p2, p3}, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->shouldDrawDividerBelow(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 804
    iget v0, p0, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->mDividerHeight:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 802
    :cond_0
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 785
    iget-object v5, p0, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_0

    .line 786
    return-void

    .line 788
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    .line 789
    .local v0, "childCount":I
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    .line 790
    .local v4, "width":I
    const/4 v1, 0x0

    .local v1, "childViewIndex":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 791
    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 792
    .local v3, "view":Landroid/view/View;
    invoke-direct {p0, v3, p2}, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->shouldDrawDividerBelow(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 793
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getY(Landroid/view/View;)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int v2, v5, v6

    .line 794
    .local v2, "top":I
    iget-object v5, p0, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->mDividerHeight:I

    add-int/2addr v6, v2

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v2, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 795
    iget-object v5, p0, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 790
    .end local v2    # "top":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 784
    .end local v3    # "view":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 827
    if-eqz p1, :cond_0

    .line 828
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->mDividerHeight:I

    .line 832
    :goto_0
    iput-object p1, p0, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 833
    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->this$0:Landroid/support/v14/preference/PreferenceFragment;

    invoke-static {v0}, Landroid/support/v14/preference/PreferenceFragment;->-get0(Landroid/support/v14/preference/PreferenceFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidateItemDecorations()V

    .line 826
    return-void

    .line 830
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->mDividerHeight:I

    goto :goto_0
.end method

.method public setDividerHeight(I)V
    .locals 1
    .param p1, "dividerHeight"    # I

    .prologue
    .line 837
    iput p1, p0, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->mDividerHeight:I

    .line 838
    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->this$0:Landroid/support/v14/preference/PreferenceFragment;

    invoke-static {v0}, Landroid/support/v14/preference/PreferenceFragment;->-get0(Landroid/support/v14/preference/PreferenceFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidateItemDecorations()V

    .line 836
    return-void
.end method
