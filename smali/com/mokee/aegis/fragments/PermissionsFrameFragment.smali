.class public abstract Lcom/mokee/aegis/fragments/PermissionsFrameFragment;
.super Landroid/support/v14/preference/PreferenceFragment;
.source "SourceFile"


# instance fields
.field private mIsLoading:Z

.field private mLoadingView:Landroid/view/View;

.field private mPreferencesContainer:Landroid/view/ViewGroup;

.field private mPrefsView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private setLoading(ZZZ)V
    .locals 2
    .param p1, "loading"    # Z
    .param p2, "animate"    # Z
    .param p3, "force"    # Z

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/mokee/aegis/fragments/PermissionsFrameFragment;->mIsLoading:Z

    if-ne v0, p1, :cond_0

    if-eqz p3, :cond_3

    .line 84
    :cond_0
    iput-boolean p1, p0, Lcom/mokee/aegis/fragments/PermissionsFrameFragment;->mIsLoading:Z

    .line 85
    invoke-virtual {p0}, Lcom/mokee/aegis/fragments/PermissionsFrameFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 87
    const/4 p2, 0x0

    .line 89
    .end local p2    # "animate":Z
    :cond_1
    iget-object v0, p0, Lcom/mokee/aegis/fragments/PermissionsFrameFragment;->mPrefsView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 90
    iget-object v1, p0, Lcom/mokee/aegis/fragments/PermissionsFrameFragment;->mPrefsView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v1, v0, p2}, Lcom/mokee/aegis/fragments/PermissionsFrameFragment;->setViewShown(Landroid/view/View;ZZ)V

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/mokee/aegis/fragments/PermissionsFrameFragment;->mLoadingView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 93
    iget-object v0, p0, Lcom/mokee/aegis/fragments/PermissionsFrameFragment;->mLoadingView:Landroid/view/View;

    invoke-direct {p0, v0, p1, p2}, Lcom/mokee/aegis/fragments/PermissionsFrameFragment;->setViewShown(Landroid/view/View;ZZ)V

    .line 82
    :cond_3
    return-void

    .line 90
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setViewShown(Landroid/view/View;ZZ)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "shown"    # Z
    .param p3, "animate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 99
    if-eqz p3, :cond_2

    .line 100
    invoke-virtual {p0}, Lcom/mokee/aegis/fragments/PermissionsFrameFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 101
    if-eqz p2, :cond_0

    const/high16 v1, 0x10a0000

    .line 100
    :goto_0
    invoke-static {v3, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 102
    .local v0, "animation":Landroid/view/animation/Animation;
    if-eqz p2, :cond_1

    .line 103
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 120
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 98
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :goto_2
    return-void

    .line 101
    :cond_0
    const v1, 0x10a0001

    goto :goto_0

    .line 105
    .restart local v0    # "animation":Landroid/view/animation/Animation;
    :cond_1
    new-instance v1, Lcom/mokee/aegis/fragments/PermissionsFrameFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/mokee/aegis/fragments/PermissionsFrameFragment$1;-><init>(Lcom/mokee/aegis/fragments/PermissionsFrameFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_1

    .line 122
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 123
    if-eqz p2, :cond_3

    move v1, v2

    :goto_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    const/4 v1, 0x4

    goto :goto_3
.end method


# virtual methods
.method protected onCreateAdapter(Landroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 8
    .param p1, "preferenceScreen"    # Landroid/support/v7/preference/PreferenceScreen;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/preference/PreferenceScreen;",
            ")",
            "Landroid/support/v7/widget/RecyclerView$Adapter",
            "<*>;"
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 135
    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceFragment;->onCreateAdapter(Landroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 137
    .local v0, "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<*>;"
    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/mokee/aegis/fragments/PermissionsFrameFragment;->getView()Landroid/view/View;

    move-result-object v4

    const v7, 0x7f0b0093

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 139
    .local v1, "emptyView":Landroid/widget/TextView;
    invoke-virtual {p0, v1}, Lcom/mokee/aegis/fragments/PermissionsFrameFragment;->onSetEmptyText(Landroid/widget/TextView;)V

    .line 140
    invoke-virtual {p0}, Lcom/mokee/aegis/fragments/PermissionsFrameFragment;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    .line 141
    .local v3, "recyclerView":Landroid/support/v7/widget/RecyclerView;
    new-instance v4, Lcom/mokee/aegis/fragments/PermissionsFrameFragment$2;

    invoke-direct {v4, p0, v0, v1, v3}, Lcom/mokee/aegis/fragments/PermissionsFrameFragment$2;-><init>(Lcom/mokee/aegis/fragments/PermissionsFrameFragment;Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/widget/TextView;Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 164
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    if-nez v4, :cond_1

    const/4 v2, 0x1

    .line 165
    .local v2, "isEmpty":Z
    :goto_0
    if-eqz v2, :cond_2

    move v4, v5

    :goto_1
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    if-eqz v2, :cond_3

    :goto_2
    invoke-virtual {v3, v6}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 169
    .end local v1    # "emptyView":Landroid/widget/TextView;
    .end local v2    # "isEmpty":Z
    .end local v3    # "recyclerView":Landroid/support/v7/widget/RecyclerView;
    :cond_0
    return-object v0

    .restart local v1    # "emptyView":Landroid/widget/TextView;
    .restart local v3    # "recyclerView":Landroid/support/v7/widget/RecyclerView;
    :cond_1
    move v2, v5

    .line 164
    goto :goto_0

    .restart local v2    # "isEmpty":Z
    :cond_2
    move v4, v6

    .line 165
    goto :goto_1

    :cond_3
    move v6, v5

    .line 166
    goto :goto_2
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "rootKey"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/mokee/aegis/fragments/PermissionsFrameFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 72
    .local v0, "preferences":Landroid/support/v7/preference/PreferenceScreen;
    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/mokee/aegis/fragments/PermissionsFrameFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mokee/aegis/fragments/PermissionsFrameFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 74
    invoke-virtual {p0, v0}, Lcom/mokee/aegis/fragments/PermissionsFrameFragment;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 70
    :cond_0
    return-void
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 130
    invoke-super {p0, p1, p2, p3}, Landroid/support/v14/preference/PreferenceFragment;->onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 55
    const v1, 0x7f040039

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 57
    .local v0, "rootView":Landroid/view/ViewGroup;
    const v1, 0x7f0b0092

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/mokee/aegis/fragments/PermissionsFrameFragment;->mPrefsView:Landroid/view/ViewGroup;

    .line 58
    iget-object v1, p0, Lcom/mokee/aegis/fragments/PermissionsFrameFragment;->mPrefsView:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    .line 59
    iput-object v0, p0, Lcom/mokee/aegis/fragments/PermissionsFrameFragment;->mPrefsView:Landroid/view/ViewGroup;

    .line 61
    :cond_0
    const v1, 0x7f0b007a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/mokee/aegis/fragments/PermissionsFrameFragment;->mLoadingView:Landroid/view/View;

    .line 63
    iget-object v1, p0, Lcom/mokee/aegis/fragments/PermissionsFrameFragment;->mPrefsView:Landroid/view/ViewGroup;

    .line 62
    invoke-super {p0, p1, v1, p3}, Landroid/support/v14/preference/PreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/mokee/aegis/fragments/PermissionsFrameFragment;->mPreferencesContainer:Landroid/view/ViewGroup;

    .line 64
    iget-boolean v1, p0, Lcom/mokee/aegis/fragments/PermissionsFrameFragment;->mIsLoading:Z

    const/4 v2, 0x1

    invoke-direct {p0, v1, v3, v2}, Lcom/mokee/aegis/fragments/PermissionsFrameFragment;->setLoading(ZZZ)V

    .line 65
    iget-object v1, p0, Lcom/mokee/aegis/fragments/PermissionsFrameFragment;->mPrefsView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/mokee/aegis/fragments/PermissionsFrameFragment;->mPreferencesContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 66
    return-object v0
.end method

.method protected onSetEmptyText(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 178
    return-void
.end method

.method protected setLoading(ZZ)V
    .locals 1
    .param p1, "loading"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mokee/aegis/fragments/PermissionsFrameFragment;->setLoading(ZZZ)V

    .line 78
    return-void
.end method
