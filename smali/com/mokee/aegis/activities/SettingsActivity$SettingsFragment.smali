.class public Lcom/mokee/aegis/activities/SettingsActivity$SettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mokee/aegis/activities/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettingsFragment"
.end annotation


# instance fields
.field private mForceStopPreference:Landroid/preference/SwitchPreference;

.field final synthetic this$0:Lcom/mokee/aegis/activities/SettingsActivity;


# direct methods
.method public constructor <init>(Lcom/mokee/aegis/activities/SettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mokee/aegis/activities/SettingsActivity;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/mokee/aegis/activities/SettingsActivity$SettingsFragment;->this$0:Lcom/mokee/aegis/activities/SettingsActivity;

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const/high16 v0, 0x7f060000

    invoke-virtual {p0, v0}, Lcom/mokee/aegis/activities/SettingsActivity$SettingsFragment;->addPreferencesFromResource(I)V

    .line 74
    const-string/jumbo v0, "aegis_warden_force_stop"

    invoke-virtual {p0, v0}, Lcom/mokee/aegis/activities/SettingsActivity$SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/mokee/aegis/activities/SettingsActivity$SettingsFragment;->mForceStopPreference:Landroid/preference/SwitchPreference;

    .line 75
    iget-object v0, p0, Lcom/mokee/aegis/activities/SettingsActivity$SettingsFragment;->mForceStopPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 76
    iget-object v2, p0, Lcom/mokee/aegis/activities/SettingsActivity$SettingsFragment;->mForceStopPreference:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/mokee/aegis/activities/SettingsActivity$SettingsFragment;->this$0:Lcom/mokee/aegis/activities/SettingsActivity;

    invoke-virtual {v0}, Lcom/mokee/aegis/activities/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "aegis_warden_force_stop"

    invoke-static {v0, v3, v1}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 70
    return-void

    :cond_0
    move v0, v1

    .line 76
    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 81
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "key":Ljava/lang/String;
    const-string/jumbo v2, "aegis_warden_force_stop"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 84
    .local v1, "value":Z
    iget-object v2, p0, Lcom/mokee/aegis/activities/SettingsActivity$SettingsFragment;->this$0:Lcom/mokee/aegis/activities/SettingsActivity;

    invoke-virtual {v2}, Lcom/mokee/aegis/activities/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "aegis_warden_force_stop"

    if-eqz v1, :cond_1

    move v2, v3

    :goto_0
    invoke-static {v4, v5, v2}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 86
    .end local v1    # "value":Z
    :cond_0
    return v3

    .line 84
    .restart local v1    # "value":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
