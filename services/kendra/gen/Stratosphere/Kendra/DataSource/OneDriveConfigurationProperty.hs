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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-onedriveconfiguration.html>
    OneDriveConfigurationProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-onedriveconfiguration.html#cfn-kendra-datasource-onedriveconfiguration-disablelocalgroups>
                                   disableLocalGroups :: (Prelude.Maybe (Value Prelude.Bool)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-onedriveconfiguration.html#cfn-kendra-datasource-onedriveconfiguration-exclusionpatterns>
                                   exclusionPatterns :: (Prelude.Maybe (ValueList Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-onedriveconfiguration.html#cfn-kendra-datasource-onedriveconfiguration-fieldmappings>
                                   fieldMappings :: (Prelude.Maybe [DataSourceToIndexFieldMappingProperty]),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-onedriveconfiguration.html#cfn-kendra-datasource-onedriveconfiguration-inclusionpatterns>
                                   inclusionPatterns :: (Prelude.Maybe (ValueList Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-onedriveconfiguration.html#cfn-kendra-datasource-onedriveconfiguration-onedriveusers>
                                   oneDriveUsers :: OneDriveUsersProperty,
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-onedriveconfiguration.html#cfn-kendra-datasource-onedriveconfiguration-secretarn>
                                   secretArn :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-onedriveconfiguration.html#cfn-kendra-datasource-onedriveconfiguration-tenantdomain>
                                   tenantDomain :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOneDriveConfigurationProperty ::
  OneDriveUsersProperty
  -> Value Prelude.Text
     -> Value Prelude.Text -> OneDriveConfigurationProperty
mkOneDriveConfigurationProperty
  oneDriveUsers
  secretArn
  tenantDomain
  = OneDriveConfigurationProperty
      {haddock_workaround_ = (), oneDriveUsers = oneDriveUsers,
       secretArn = secretArn, tenantDomain = tenantDomain,
       disableLocalGroups = Prelude.Nothing,
       exclusionPatterns = Prelude.Nothing,
       fieldMappings = Prelude.Nothing,
       inclusionPatterns = Prelude.Nothing}
instance ToResourceProperties OneDriveConfigurationProperty where
  toResourceProperties OneDriveConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.OneDriveConfiguration",
         supportsTags = Prelude.False,
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
  type PropertyType "ExclusionPatterns" OneDriveConfigurationProperty = ValueList Prelude.Text
  set newValue OneDriveConfigurationProperty {..}
    = OneDriveConfigurationProperty
        {exclusionPatterns = Prelude.pure newValue, ..}
instance Property "FieldMappings" OneDriveConfigurationProperty where
  type PropertyType "FieldMappings" OneDriveConfigurationProperty = [DataSourceToIndexFieldMappingProperty]
  set newValue OneDriveConfigurationProperty {..}
    = OneDriveConfigurationProperty
        {fieldMappings = Prelude.pure newValue, ..}
instance Property "InclusionPatterns" OneDriveConfigurationProperty where
  type PropertyType "InclusionPatterns" OneDriveConfigurationProperty = ValueList Prelude.Text
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