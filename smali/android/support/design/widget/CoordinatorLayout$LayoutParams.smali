.class public Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/CoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public anchorGravity:I

.field public dodgeInsetEdges:I

.field public gravity:I

.field public insetEdge:I

.field public keyline:I

.field mAnchorDirectChild:Landroid/view/View;

.field mAnchorId:I

.field mAnchorView:Landroid/view/View;

.field mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

.field mBehaviorResolved:Z

.field mBehaviorTag:Ljava/lang/Object;

.field private mDidAcceptNestedScroll:Z

.field private mDidBlockInteraction:Z

.field private mDidChangeAfterNestedScroll:Z

.field mInsetOffsetX:I

.field mInsetOffsetY:I

.field final mLastChildRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 2542
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 2485
    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2492
    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2498
    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 2505
    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2511
    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2518
    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    .line 2525
    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 2537
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    .line 2541
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 2546
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2485
    iput-boolean v2, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2492
    iput v2, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2498
    iput v2, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 2505
    iput v3, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2511
    iput v3, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2518
    iput v2, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    .line 2525
    iput v2, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 2537
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    .line 2549
    sget-object v1, Landroid/support/design/R$styleable;->CoordinatorLayout_Layout:[I

    .line 2548
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2552
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroid/support/design/R$styleable;->CoordinatorLayout_Layout_android_layout_gravity:I

    .line 2551
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2554
    sget v1, Landroid/support/design/R$styleable;->CoordinatorLayout_Layout_layout_anchor:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2557
    sget v1, Landroid/support/design/R$styleable;->CoordinatorLayout_Layout_layout_anchorGravity:I

    .line 2556
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 2560
    sget v1, Landroid/support/design/R$styleable;->CoordinatorLayout_Layout_layout_keyline:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2563
    sget v1, Landroid/support/design/R$styleable;->CoordinatorLayout_Layout_layout_insetEdge:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    .line 2565
    sget v1, Landroid/support/design/R$styleable;->CoordinatorLayout_Layout_layout_dodgeInsetEdges:I

    .line 2564
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 2567
    sget v1, Landroid/support/design/R$styleable;->CoordinatorLayout_Layout_layout_behavior:I

    .line 2566
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2568
    iget-boolean v1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    if-eqz v1, :cond_0

    .line 2570
    sget v1, Landroid/support/design/R$styleable;->CoordinatorLayout_Layout_layout_behavior:I

    .line 2569
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1}, Landroid/support/design/widget/CoordinatorLayout;->parseBehavior(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    .line 2572
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2574
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    if-eqz v1, :cond_1

    .line 2576
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    invoke-virtual {v1, p0}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onAttachedToLayoutParams(Landroid/support/design/widget/CoordinatorLayout$LayoutParams;)V

    .line 2545
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/support/design/widget/CoordinatorLayout$LayoutParams;)V
    .locals 2
    .param p1, "p"    # Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 2581
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2485
    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2492
    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2498
    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 2505
    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2511
    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2518
    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    .line 2525
    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 2537
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    .line 2580
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 2589
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2485
    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2492
    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2498
    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 2505
    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2511
    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2518
    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    .line 2525
    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 2537
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    .line 2588
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 2585
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2485
    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2492
    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2498
    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 2505
    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2511
    iput v1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2518
    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    .line 2525
    iput v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 2537
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    .line 2584
    return-void
.end method

.method private resolveAnchorView(Landroid/view/View;Landroid/support/design/widget/CoordinatorLayout;)V
    .locals 6
    .param p1, "forChild"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/support/design/widget/CoordinatorLayout;

    .prologue
    const/4 v3, 0x0

    .line 2799
    iget v2, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    invoke-virtual {p2, v2}, Landroid/support/design/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 2800
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-eqz v2, :cond_6

    .line 2801
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-ne v2, p2, :cond_1

    .line 2802
    invoke-virtual {p2}, Landroid/support/design/widget/CoordinatorLayout;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2803
    iput-object v3, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    iput-object v3, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 2804
    return-void

    .line 2806
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 2807
    const-string/jumbo v3, "View can not be anchored to the the parent CoordinatorLayout"

    .line 2806
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2810
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 2811
    .local v0, "directChild":Landroid/view/View;
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2812
    .local v1, "p":Landroid/view/ViewParent;
    :goto_0
    if-eq v1, p2, :cond_5

    if-eqz v1, :cond_5

    .line 2814
    if-ne v1, p1, :cond_3

    .line 2815
    invoke-virtual {p2}, Landroid/support/design/widget/CoordinatorLayout;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2816
    iput-object v3, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    iput-object v3, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 2817
    return-void

    .line 2819
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 2820
    const-string/jumbo v3, "Anchor must not be a descendant of the anchored view"

    .line 2819
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2822
    :cond_3
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_4

    move-object v0, v1

    .line 2823
    check-cast v0, Landroid/view/View;

    .line 2813
    :cond_4
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 2826
    :cond_5
    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    .line 2798
    return-void

    .line 2828
    .end local v0    # "directChild":Landroid/view/View;
    .end local v1    # "p":Landroid/view/ViewParent;
    :cond_6
    invoke-virtual {p2}, Landroid/support/design/widget/CoordinatorLayout;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2829
    iput-object v3, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    iput-object v3, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 2830
    return-void

    .line 2832
    :cond_7
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not find CoordinatorLayout descendant view with id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2833
    invoke-virtual {p2}, Landroid/support/design/widget/CoordinatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    .line 2832
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2834
    const-string/jumbo v4, " to anchor view "

    .line 2832
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private shouldDodge(Landroid/view/View;I)Z
    .locals 4
    .param p1, "other"    # Landroid/view/View;
    .param p2, "layoutDirection"    # I

    .prologue
    const/4 v2, 0x0

    .line 2868
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 2869
    .local v1, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    iget v3, v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    invoke-static {v3, p2}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    .line 2870
    .local v0, "absInset":I
    if-eqz v0, :cond_0

    .line 2871
    iget v3, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    invoke-static {v3, p2}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v3

    .line 2870
    and-int/2addr v3, v0

    if-ne v3, v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private verifyAnchorView(Landroid/view/View;Landroid/support/design/widget/CoordinatorLayout;)Z
    .locals 6
    .param p1, "forChild"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/support/design/widget/CoordinatorLayout;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2844
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    iget v3, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    if-eq v2, v3, :cond_0

    .line 2845
    return v5

    .line 2848
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 2849
    .local v0, "directChild":Landroid/view/View;
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .local v1, "p":Landroid/view/ViewParent;
    :goto_0
    if-eq v1, p2, :cond_4

    .line 2852
    if-eqz v1, :cond_1

    if-ne v1, p1, :cond_2

    .line 2853
    :cond_1
    iput-object v4, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    iput-object v4, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 2854
    return v5

    .line 2856
    :cond_2
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_3

    move-object v0, v1

    .line 2857
    check-cast v0, Landroid/view/View;

    .line 2851
    :cond_3
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 2860
    :cond_4
    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    .line 2861
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method acceptNestedScroll(Z)V
    .locals 0
    .param p1, "accept"    # Z

    .prologue
    .line 2730
    iput-boolean p1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidAcceptNestedScroll:Z

    .line 2729
    return-void
.end method

.method checkAnchorChanged()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2676
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-nez v1, :cond_0

    iget v1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method dependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "dependency"    # Landroid/view/View;

    .prologue
    .line 2758
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    if-eq p3, v0, :cond_0

    .line 2759
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, p3, v0}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->shouldDodge(Landroid/view/View;I)Z

    move-result v0

    .line 2758
    if-nez v0, :cond_0

    .line 2760
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    .line 2758
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2760
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method didBlockInteraction()Z
    .locals 1

    .prologue
    .line 2687
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    if-nez v0, :cond_0

    .line 2688
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    .line 2690
    :cond_0
    iget-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    return v0
.end method

.method findAnchorView(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/view/View;
    .locals 3
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "forChild"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 2783
    iget v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2784
    iput-object v2, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    iput-object v2, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 2785
    return-object v2

    .line 2788
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-direct {p0, p2, p1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->verifyAnchorView(Landroid/view/View;Landroid/support/design/widget/CoordinatorLayout;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2791
    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    return-object v0

    .line 2789
    :cond_1
    invoke-direct {p0, p2, p1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->resolveAnchorView(Landroid/view/View;Landroid/support/design/widget/CoordinatorLayout;)V

    goto :goto_0
.end method

.method public getAnchorId()I
    .locals 1
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation

    .prologue
    .line 2599
    iget v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    return v0
.end method

.method public getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 2625
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    return-object v0
.end method

.method getChangedAfterNestedScroll()Z
    .locals 1

    .prologue
    .line 2738
    iget-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidChangeAfterNestedScroll:Z

    return v0
.end method

.method getLastChildRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 2668
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method invalidateAnchor()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2770
    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 2769
    return-void
.end method

.method isBlockingInteractionBelow(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Z
    .locals 2
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 2705
    iget-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    if-eqz v0, :cond_0

    .line 2706
    const/4 v0, 0x1

    return v0

    .line 2709
    :cond_0
    iget-boolean v1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    if-eqz v0, :cond_1

    .line 2710
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    invoke-virtual {v0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->blocksInteractionBelow(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Z

    move-result v0

    .line 2709
    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    return v0

    .line 2711
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isNestedScrollAccepted()Z
    .locals 1

    .prologue
    .line 2734
    iget-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidAcceptNestedScroll:Z

    return v0
.end method

.method resetChangedAfterNestedScroll()V
    .locals 1

    .prologue
    .line 2746
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidChangeAfterNestedScroll:Z

    .line 2745
    return-void
.end method

.method resetNestedScroll()V
    .locals 1

    .prologue
    .line 2726
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidAcceptNestedScroll:Z

    .line 2725
    return-void
.end method

.method resetTouchBehaviorTracking()V
    .locals 1

    .prologue
    .line 2722
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    .line 2721
    return-void
.end method

.method public setAnchorId(I)V
    .locals 0
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 2613
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->invalidateAnchor()V

    .line 2614
    iput p1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2612
    return-void
.end method

.method public setBehavior(Landroid/support/design/widget/CoordinatorLayout$Behavior;)V
    .locals 2
    .param p1, "behavior"    # Landroid/support/design/widget/CoordinatorLayout$Behavior;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 2638
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    if-eq v0, p1, :cond_1

    .line 2639
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    if-eqz v0, :cond_0

    .line 2641
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onDetachedFromLayoutParams()V

    .line 2644
    :cond_0
    iput-object p1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    .line 2645
    iput-object v1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorTag:Ljava/lang/Object;

    .line 2646
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2648
    if-eqz p1, :cond_1

    .line 2650
    invoke-virtual {p1, p0}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onAttachedToLayoutParams(Landroid/support/design/widget/CoordinatorLayout$LayoutParams;)V

    .line 2637
    :cond_1
    return-void
.end method

.method setChangedAfterNestedScroll(Z)V
    .locals 0
    .param p1, "changed"    # Z

    .prologue
    .line 2742
    iput-boolean p1, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidChangeAfterNestedScroll:Z

    .line 2741
    return-void
.end method

.method setLastChildRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 2660
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2659
    return-void
.end method
