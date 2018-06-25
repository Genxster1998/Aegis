.class public Lcom/mokee/aegis/activities/ManagePermissionsActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mokee/aegis/activities/ManagePermissionsActivity$SectionsPagerAdapter;
    }
.end annotation


# instance fields
.field private mSectionsPagerAdapter:Lcom/mokee/aegis/activities/ManagePermissionsActivity$SectionsPagerAdapter;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v2, 0x7f04003a

    invoke-virtual {p0, v2}, Lcom/mokee/aegis/activities/ManagePermissionsActivity;->setContentView(I)V

    .line 53
    const v2, 0x7f0b0096

    invoke-virtual {p0, v2}, Lcom/mokee/aegis/activities/ManagePermissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/Toolbar;

    .line 54
    .local v1, "toolbar":Landroid/support/v7/widget/Toolbar;
    invoke-virtual {p0, v1}, Lcom/mokee/aegis/activities/ManagePermissionsActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 57
    new-instance v2, Lcom/mokee/aegis/activities/ManagePermissionsActivity$SectionsPagerAdapter;

    invoke-virtual {p0}, Lcom/mokee/aegis/activities/ManagePermissionsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/mokee/aegis/activities/ManagePermissionsActivity$SectionsPagerAdapter;-><init>(Lcom/mokee/aegis/activities/ManagePermissionsActivity;Landroid/app/FragmentManager;)V

    iput-object v2, p0, Lcom/mokee/aegis/activities/ManagePermissionsActivity;->mSectionsPagerAdapter:Lcom/mokee/aegis/activities/ManagePermissionsActivity$SectionsPagerAdapter;

    .line 60
    const v2, 0x7f0b0098

    invoke-virtual {p0, v2}, Lcom/mokee/aegis/activities/ManagePermissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/mokee/aegis/activities/ManagePermissionsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 61
    iget-object v2, p0, Lcom/mokee/aegis/activities/ManagePermissionsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/mokee/aegis/activities/ManagePermissionsActivity;->mSectionsPagerAdapter:Lcom/mokee/aegis/activities/ManagePermissionsActivity$SectionsPagerAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 62
    iget-object v2, p0, Lcom/mokee/aegis/activities/ManagePermissionsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 64
    const v2, 0x7f0b0097

    invoke-virtual {p0, v2}, Lcom/mokee/aegis/activities/ManagePermissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    .line 65
    .local v0, "tabLayout":Landroid/support/design/widget/TabLayout;
    iget-object v2, p0, Lcom/mokee/aegis/activities/ManagePermissionsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 49
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/mokee/aegis/activities/ManagePermissionsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0e0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 71
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 72
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 76
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 74
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/mokee/aegis/activities/SettingsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/mokee/aegis/activities/ManagePermissionsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x7f0b009d
        :pswitch_0
    .end packed-switch
.end method
