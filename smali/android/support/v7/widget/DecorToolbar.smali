.class public interface abstract Landroid/support/v7/widget/DecorToolbar;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# virtual methods
.method public abstract animateToVisibility(I)V
.end method

.method public abstract canShowOverflowMenu()Z
.end method

.method public abstract collapseActionView()V
.end method

.method public abstract dismissPopupMenus()V
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getCustomView()Landroid/view/View;
.end method

.method public abstract getDisplayOptions()I
.end method

.method public abstract getDropdownItemCount()I
.end method

.method public abstract getDropdownSelectedPosition()I
.end method

.method public abstract getHeight()I
.end method

.method public abstract getMenu()Landroid/view/Menu;
.end method

.method public abstract getNavigationMode()I
.end method

.method public abstract getSubtitle()Ljava/lang/CharSequence;
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
.end method

.method public abstract getViewGroup()Landroid/view/ViewGroup;
.end method

.method public abstract getVisibility()I
.end method

.method public abstract hasEmbeddedTabs()Z
.end method

.method public abstract hasExpandedActionView()Z
.end method

.method public abstract hasIcon()Z
.end method

.method public abstract hasLogo()Z
.end method

.method public abstract hideOverflowMenu()Z
.end method

.method public abstract initIndeterminateProgress()V
.end method

.method public abstract initProgress()V
.end method

.method public abstract isOverflowMenuShowPending()Z
.end method

.method public abstract isOverflowMenuShowing()Z
.end method

.method public abstract isTitleTruncated()Z
.end method

.method public abstract restoreHierarchyState(Landroid/util/SparseArray;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract saveHierarchyState(Landroid/util/SparseArray;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setCollapsible(Z)V
.end method

.method public abstract setCustomView(Landroid/view/View;)V
.end method

.method public abstract setDefaultNavigationContentDescription(I)V
.end method

.method public abstract setDefaultNavigationIcon(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setDisplayOptions(I)V
.end method

.method public abstract setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V
.end method

.method public abstract setDropdownSelectedPosition(I)V
.end method

.method public abstract setEmbeddedTabView(Landroid/support/v7/widget/ScrollingTabContainerView;)V
.end method

.method public abstract setHomeButtonEnabled(Z)V
.end method

.method public abstract setIcon(I)V
.end method

.method public abstract setIcon(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setLogo(I)V
.end method

.method public abstract setLogo(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setMenu(Landroid/view/Menu;Landroid/support/v7/view/menu/MenuPresenter$Callback;)V
.end method

.method public abstract setMenuCallbacks(Landroid/support/v7/view/menu/MenuPresenter$Callback;Landroid/support/v7/view/menu/MenuBuilder$Callback;)V
.end method

.method public abstract setMenuPrepared()V
.end method

.method public abstract setNavigationContentDescription(I)V
.end method

.method public abstract setNavigationContentDescription(Ljava/lang/CharSequence;)V
.end method

.method public abstract setNavigationIcon(I)V
.end method

.method public abstract setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setNavigationMode(I)V
.end method

.method public abstract setSubtitle(Ljava/lang/CharSequence;)V
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
.end method

.method public abstract setVisibility(I)V
.end method

.method public abstract setWindowCallback(Landroid/view/Window$Callback;)V
.end method

.method public abstract setWindowTitle(Ljava/lang/CharSequence;)V
.end method

.method public abstract setupAnimatorToVisibility(IJ)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.end method

.method public abstract showOverflowMenu()Z
.end method
