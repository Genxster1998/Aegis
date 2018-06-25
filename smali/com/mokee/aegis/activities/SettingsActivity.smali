.class public Lcom/mokee/aegis/activities/SettingsActivity;
.super Lcom/mokee/aegis/activities/AppCompatPreferenceActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mokee/aegis/activities/SettingsActivity$SettingsFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/mokee/aegis/activities/AppCompatPreferenceActivity;-><init>()V

    return-void
.end method

.method private setupActionBar()V
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/mokee/aegis/activities/SettingsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 46
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_0

    .line 48
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 44
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/mokee/aegis/activities/AppCompatPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-direct {p0}, Lcom/mokee/aegis/activities/SettingsActivity;->setupActionBar()V

    .line 37
    invoke-virtual {p0}, Lcom/mokee/aegis/activities/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 38
    new-instance v1, Lcom/mokee/aegis/activities/SettingsActivity$SettingsFragment;

    invoke-direct {v1, p0}, Lcom/mokee/aegis/activities/SettingsActivity$SettingsFragment;-><init>(Lcom/mokee/aegis/activities/SettingsActivity;)V

    .line 37
    const v2, 0x1020002

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 34
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 54
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 55
    .local v0, "id":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/mokee/aegis/activities/SettingsActivity;->onBackPressed()V

    .line 57
    const/4 v1, 0x1

    return v1

    .line 59
    :cond_0
    invoke-super {p0, p1}, Lcom/mokee/aegis/activities/AppCompatPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method
