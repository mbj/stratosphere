module Stratosphere.Kendra.DataSource.OneDriveConfigurationProperty (
        module Exports, OneDriveConfigurationProperty(..),
        mkOneDriveConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.DataSourceToIndexFieldMappingProperty as Exports
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.OneDriveUsersProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OneDriveConfigurationProperty
  = OneDriveConfigurationProperty {disableLocalGroups :: (Prelude.Maybe (Value Prelude.Bool)),
                                   exclusionPatterns :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                                   fieldMappings :: (Prelude.Maybe [DataSourceToIndexFieldMappingProperty]),
                                   inclusionPatterns :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                                   oneDriveUsers :: OneDriveUsersProperty,
                                   secretArn :: (Value Prelude.Text),
                                   tenantDomain :: (Value Prelude.Text)}
mkOneDriveConfigurationProperty ::
  OneDriveUsersProperty
  -> Value Prelude.Text
     -> Value Prelude.Text -> OneDriveConfigurationProperty
mkOneDriveConfigurationProperty
  oneDriveUsers
  secretArn
  tenantDomain
  = OneDriveConfigurationProperty
      {oneDriveUsers = oneDriveUsers, secretArn = secretArn,
       tenantDomain = tenantDomain, disableLocalGroups = Prelude.Nothing,
       exclusionPatterns = Prelude.Nothing,
       fieldMappings = Prelude.Nothing,
       inclusionPatterns = Prelude.Nothing}
instance ToResourceProperties OneDriveConfigurationProperty where
  toResourceProperties OneDriveConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.OneDriveConfiguration",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["OneDriveUsers" JSON..= oneDriveUsers,
                            "SecretArn" JSON..= secretArn, "TenantDomain" JSON..= tenantDomain]
                           (Prelude.catMaybes
                              [(JSON..=) "DisableLocalGroups" Prelude.<$> disableLocalGroups,
                               (JSON..=) "ExclusionPatterns" Prelude.<$> exclusionPatterns,
                               (JSON..=) "FieldMappings" Prelude.<$> fieldMappings,
                               (JSON..=) "InclusionPatterns" Prelude.<$> inclusionPatterns]))}
instance JSON.ToJSON OneDriveConfigurationProperty where
  toJSON OneDriveConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["OneDriveUsers" JSON..= oneDriveUsers,
               "SecretArn" JSON..= secretArn, "TenantDomain" JSON..= tenantDomain]
              (Prelude.catMaybes
                 [(JSON..=) "DisableLocalGroups" Prelude.<$> disableLocalGroups,
                  (JSON..=) "ExclusionPatterns" Prelude.<$> exclusionPatterns,
                  (JSON..=) "FieldMappings" Prelude.<$> fieldMappings,
                  (JSON..=) "InclusionPatterns" Prelude.<$> inclusionPatterns])))
instance Property "DisableLocalGroups" OneDriveConfigurationProperty where
  type PropertyType "DisableLocalGroups" OneDriveConfigurationProperty = Value Prelude.Bool
  set newValue OneDriveConfigurationProperty {..}
    = OneDriveConfigurationProperty
        {disableLocalGroups = Prelude.pure newValue, ..}
instance Property "ExclusionPatterns" OneDriveConfigurationProperty where
  type PropertyType "ExclusionPatterns" OneDriveConfigurationProperty = ValueList (Value Prelude.Text)
  set newValue OneDriveConfigurationProperty {..}
    = OneDriveConfigurationProperty
        {exclusionPatterns = Prelude.pure newValue, ..}
instance Property "FieldMappings" OneDriveConfigurationProperty where
  type PropertyType "FieldMappings" OneDriveConfigurationProperty = [DataSourceToIndexFieldMappingProperty]
  set newValue OneDriveConfigurationProperty {..}
    = OneDriveConfigurationProperty
        {fieldMappings = Prelude.pure newValue, ..}
instance Property "InclusionPatterns" OneDriveConfigurationProperty where
  type PropertyType "InclusionPatterns" OneDriveConfigurationProperty = ValueList (Value Prelude.Text)
  set newValue OneDriveConfigurationProperty {..}
    = OneDriveConfigurationProperty
        {inclusionPatterns = Prelude.pure newValue, ..}
instance Property "OneDriveUsers" OneDriveConfigurationProperty where
  type PropertyType "OneDriveUsers" OneDriveConfigurationProperty = OneDriveUsersProperty
  set newValue OneDriveConfigurationProperty {..}
    = OneDriveConfigurationProperty {oneDriveUsers = newValue, ..}
instance Property "SecretArn" OneDriveConfigurationProperty where
  type PropertyType "SecretArn" OneDriveConfigurationProperty = Value Prelude.Text
  set newValue OneDriveConfigurationProperty {..}
    = OneDriveConfigurationProperty {secretArn = newValue, ..}
instance Property "TenantDomain" OneDriveConfigurationProperty where
  type PropertyType "TenantDomain" OneDriveConfigurationProperty = Value Prelude.Text
  set newValue OneDriveConfigurationProperty {..}
    = OneDriveConfigurationProperty {tenantDomain = newValue, ..}