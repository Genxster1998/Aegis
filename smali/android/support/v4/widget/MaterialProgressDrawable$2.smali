.class Landroid/support/v4/widget/MaterialProgressDrawable$2;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/widget/MaterialProgressDrawable;->setupAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

.field final synthetic val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/MaterialProgressDrawable;Landroid/support/v4/widget/MaterialProgressDrawable$Ring;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/widget/MaterialProgressDrawable;
    .param p2, "val$ring"    # Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    .prologue
    .line 363
    iput-object p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$2;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

    iput-object p2, p0, Landroid/support/v4/widget/MaterialProgressDrawable$2;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 13
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 366
    iget-object v10, p0, Landroid/support/v4/widget/MaterialProgressDrawable$2;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

    iget-boolean v10, v10, Landroid/support/v4/widget/MaterialProgressDrawable;->mFinishing:Z

    if-eqz v10, :cond_0

    .line 367
    iget-object v10, p0, Landroid/support/v4/widget/MaterialProgressDrawable$2;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

    iget-object v11, p0, Landroid/support/v4/widget/MaterialProgressDrawable$2;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v10, p1, v11}, Landroid/support/v4/widget/MaterialProgressDrawable;->applyFinishTranslation(FLandroid/support/v4/widget/MaterialProgressDrawable$Ring;)V

    .line 365
    :goto_0
    return-void

    .line 371
    :cond_0
    iget-object v10, p0, Landroid/support/v4/widget/MaterialProgressDrawable$2;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

    iget-object v11, p0, Landroid/support/v4/widget/MaterialProgressDrawable$2;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v10, v11}, Landroid/support/v4/widget/MaterialProgressDrawable;->getMinProgressArc(Landroid/support/v4/widget/MaterialProgressDrawable$Ring;)F

    move-result v3

    .line 372
    .local v3, "minProgressArc":F
    iget-object v10, p0, Landroid/support/v4/widget/MaterialProgressDrawable$2;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v10}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingEndTrim()F

    move-result v7

    .line 373
    .local v7, "startingEndTrim":F
    iget-object v10, p0, Landroid/support/v4/widget/MaterialProgressDrawable$2;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v10}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v9

    .line 374
    .local v9, "startingTrim":F
    iget-object v10, p0, Landroid/support/v4/widget/MaterialProgressDrawable$2;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v10}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v8

    .line 376
    .local v8, "startingRotation":F
    iget-object v10, p0, Landroid/support/v4/widget/MaterialProgressDrawable$2;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

    iget-object v11, p0, Landroid/support/v4/widget/MaterialProgressDrawable$2;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v10, p1, v11}, Landroid/support/v4/widget/MaterialProgressDrawable;->updateRingColor(FLandroid/support/v4/widget/MaterialProgressDrawable$Ring;)V

    .line 380
    const/high16 v10, 0x3f000000    # 0.5f

    cmpg-float v10, p1, v10

    if-gtz v10, :cond_1

    .line 385
    const/high16 v10, 0x3f000000    # 0.5f

    .line 384
    div-float v5, p1, v10

    .line 387
    .local v5, "scaledTime":F
    const v10, 0x3f4ccccd    # 0.8f

    sub-float/2addr v10, v3

    sget-object v11, Landroid/support/v4/widget/MaterialProgressDrawable;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v11, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v11

    mul-float/2addr v10, v11

    .line 386
    add-float v6, v9, v10

    .line 389
    .local v6, "startTrim":F
    iget-object v10, p0, Landroid/support/v4/widget/MaterialProgressDrawable$2;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v10, v6}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 394
    .end local v5    # "scaledTime":F
    .end local v6    # "startTrim":F
    :cond_1
    const/high16 v10, 0x3f000000    # 0.5f

    cmpl-float v10, p1, v10

    if-lez v10, :cond_2

    .line 398
    const v10, 0x3f4ccccd    # 0.8f

    sub-float v2, v10, v3

    .line 399
    .local v2, "minArc":F
    const/high16 v10, 0x3f000000    # 0.5f

    sub-float v10, p1, v10

    .line 400
    const/high16 v11, 0x3f000000    # 0.5f

    .line 399
    div-float v5, v10, v11

    .line 402
    .restart local v5    # "scaledTime":F
    sget-object v10, Landroid/support/v4/widget/MaterialProgressDrawable;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v10, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v10

    mul-float/2addr v10, v2

    .line 401
    add-float v0, v7, v10

    .line 403
    .local v0, "endTrim":F
    iget-object v10, p0, Landroid/support/v4/widget/MaterialProgressDrawable$2;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v10, v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    .line 406
    .end local v0    # "endTrim":F
    .end local v2    # "minArc":F
    .end local v5    # "scaledTime":F
    :cond_2
    const/high16 v10, 0x3e800000    # 0.25f

    mul-float/2addr v10, p1

    add-float v4, v8, v10

    .line 407
    .local v4, "rotation":F
    iget-object v10, p0, Landroid/support/v4/widget/MaterialProgressDrawable$2;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v10, v4}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setRotation(F)V

    .line 409
    const/high16 v10, 0x43580000    # 216.0f

    mul-float/2addr v10, p1

    .line 410
    iget-object v11, p0, Landroid/support/v4/widget/MaterialProgressDrawable$2;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

    iget v11, v11, Landroid/support/v4/widget/MaterialProgressDrawable;->mRotationCount:F

    const/high16 v12, 0x40a00000    # 5.0f

    div-float/2addr v11, v12

    const/high16 v12, 0x44870000    # 1080.0f

    mul-float/2addr v11, v12

    .line 409
    add-float v1, v10, v11

    .line 411
    .local v1, "groupRotation":F
    iget-object v10, p0, Landroid/support/v4/widget/MaterialProgressDrawable$2;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v10, v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->setRotation(F)V

    goto :goto_0
.end method
