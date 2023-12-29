module Stratosphere.Kendra.DataSource.GoogleDriveConfigurationProperty (
        module Exports, GoogleDriveConfigurationProperty(..),
        mkGoogleDriveConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.DataSourceToIndexFieldMappingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GoogleDriveConfigurationProperty
  = GoogleDriveConfigurationProperty {excludeMimeTypes :: (Prelude.Maybe (ValueList Prelude.Text)),
                                      excludeSharedDrives :: (Prelude.Maybe (ValueList Prelude.Text)),
                                      excludeUserAccounts :: (Prelude.Maybe (ValueList Prelude.Text)),
                                      exclusionPatterns :: (Prelude.Maybe (ValueList Prelude.Text)),
                                      fieldMappings :: (Prelude.Maybe [DataSourceToIndexFieldMappingProperty]),
                                      inclusionPatterns :: (Prelude.Maybe (ValueList Prelude.Text)),
                                      secretArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGoogleDriveConfigurationProperty ::
  Value Prelude.Text -> GoogleDriveConfigurationProperty
mkGoogleDriveConfigurationProperty secretArn
  = GoogleDriveConfigurationProperty
      {secretArn = secretArn, excludeMimeTypes = Prelude.Nothing,
       excludeSharedDrives = Prelude.Nothing,
       excludeUserAccounts = Prelude.Nothing,
       exclusionPatterns = Prelude.Nothing,
       fieldMappings = Prelude.Nothing,
       inclusionPatterns = Prelude.Nothing}
instance ToResourceProperties GoogleDriveConfigurationProperty where
  toResourceProperties GoogleDriveConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.GoogleDriveConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SecretArn" JSON..= secretArn]
                           (Prelude.catMaybes
                              [(JSON..=) "ExcludeMimeTypes" Prelude.<$> excludeMimeTypes,
                               (JSON..=) "ExcludeSharedDrives" Prelude.<$> excludeSharedDrives,
                               (JSON..=) "ExcludeUserAccounts" Prelude.<$> excludeUserAccounts,
                               (JSON..=) "ExclusionPatterns" Prelude.<$> exclusionPatterns,
                               (JSON..=) "FieldMappings" Prelude.<$> fieldMappings,
                               (JSON..=) "InclusionPatterns" Prelude.<$> inclusionPatterns]))}
instance JSON.ToJSON GoogleDriveConfigurationProperty where
  toJSON GoogleDriveConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SecretArn" JSON..= secretArn]
              (Prelude.catMaybes
                 [(JSON..=) "ExcludeMimeTypes" Prelude.<$> excludeMimeTypes,
                  (JSON..=) "ExcludeSharedDrives" Prelude.<$> excludeSharedDrives,
                  (JSON..=) "ExcludeUserAccounts" Prelude.<$> excludeUserAccounts,
                  (JSON..=) "ExclusionPatterns" Prelude.<$> exclusionPatterns,
                  (JSON..=) "FieldMappings" Prelude.<$> fieldMappings,
                  (JSON..=) "InclusionPatterns" Prelude.<$> inclusionPatterns])))
instance Property "ExcludeMimeTypes" GoogleDriveConfigurationProperty where
  type PropertyType "ExcludeMimeTypes" GoogleDriveConfigurationProperty = ValueList Prelude.Text
  set newValue GoogleDriveConfigurationProperty {..}
    = GoogleDriveConfigurationProperty
        {excludeMimeTypes = Prelude.pure newValue, ..}
instance Property "ExcludeSharedDrives" GoogleDriveConfigurationProperty where
  type PropertyType "ExcludeSharedDrives" GoogleDriveConfigurationProperty = ValueList Prelude.Text
  set newValue GoogleDriveConfigurationProperty {..}
    = GoogleDriveConfigurationProperty
        {excludeSharedDrives = Prelude.pure newValue, ..}
instance Property "ExcludeUserAccounts" GoogleDriveConfigurationProperty where
  type PropertyType "ExcludeUserAccounts" GoogleDriveConfigurationProperty = ValueList Prelude.Text
  set newValue GoogleDriveConfigurationProperty {..}
    = GoogleDriveConfigurationProperty
        {excludeUserAccounts = Prelude.pure newValue, ..}
instance Property "ExclusionPatterns" GoogleDriveConfigurationProperty where
  type PropertyType "ExclusionPatterns" GoogleDriveConfigurationProperty = ValueList Prelude.Text
  set newValue GoogleDriveConfigurationProperty {..}
    = GoogleDriveConfigurationProperty
        {exclusionPatterns = Prelude.pure newValue, ..}
instance Property "FieldMappings" GoogleDriveConfigurationProperty where
  type PropertyType "FieldMappings" GoogleDriveConfigurationProperty = [DataSourceToIndexFieldMappingProperty]
  set newValue GoogleDriveConfigurationProperty {..}
    = GoogleDriveConfigurationProperty
        {fieldMappings = Prelude.pure newValue, ..}
instance Property "InclusionPatterns" GoogleDriveConfigurationProperty where
  type PropertyType "InclusionPatterns" GoogleDriveConfigurationProperty = ValueList Prelude.Text
  set newValue GoogleDriveConfigurationProperty {..}
    = GoogleDriveConfigurationProperty
        {inclusionPatterns = Prelude.pure newValue, ..}
instance Property "SecretArn" GoogleDriveConfigurationProperty where
  type PropertyType "SecretArn" GoogleDriveConfigurationProperty = Value Prelude.Text
  set newValue GoogleDriveConfigurationProperty {..}
    = GoogleDriveConfigurationProperty {secretArn = newValue, ..}