module Stratosphere.Athena.WorkGroup.ManagedQueryResultsConfigurationProperty (
        module Exports, ManagedQueryResultsConfigurationProperty(..),
        mkManagedQueryResultsConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Athena.WorkGroup.ManagedStorageEncryptionConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ManagedQueryResultsConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-managedqueryresultsconfiguration.html>
    ManagedQueryResultsConfigurationProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-managedqueryresultsconfiguration.html#cfn-athena-workgroup-managedqueryresultsconfiguration-enabled>
                                              enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-managedqueryresultsconfiguration.html#cfn-athena-workgroup-managedqueryresultsconfiguration-encryptionconfiguration>
                                              encryptionConfiguration :: (Prelude.Maybe ManagedStorageEncryptionConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkManagedQueryResultsConfigurationProperty ::
  ManagedQueryResultsConfigurationProperty
mkManagedQueryResultsConfigurationProperty
  = ManagedQueryResultsConfigurationProperty
      {haddock_workaround_ = (), enabled = Prelude.Nothing,
       encryptionConfiguration = Prelude.Nothing}
instance ToResourceProperties ManagedQueryResultsConfigurationProperty where
  toResourceProperties ManagedQueryResultsConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Athena::WorkGroup.ManagedQueryResultsConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Enabled" Prelude.<$> enabled,
                            (JSON..=) "EncryptionConfiguration"
                              Prelude.<$> encryptionConfiguration])}
instance JSON.ToJSON ManagedQueryResultsConfigurationProperty where
  toJSON ManagedQueryResultsConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Enabled" Prelude.<$> enabled,
               (JSON..=) "EncryptionConfiguration"
                 Prelude.<$> encryptionConfiguration]))
instance Property "Enabled" ManagedQueryResultsConfigurationProperty where
  type PropertyType "Enabled" ManagedQueryResultsConfigurationProperty = Value Prelude.Bool
  set newValue ManagedQueryResultsConfigurationProperty {..}
    = ManagedQueryResultsConfigurationProperty
        {enabled = Prelude.pure newValue, ..}
instance Property "EncryptionConfiguration" ManagedQueryResultsConfigurationProperty where
  type PropertyType "EncryptionConfiguration" ManagedQueryResultsConfigurationProperty = ManagedStorageEncryptionConfigurationProperty
  set newValue ManagedQueryResultsConfigurationProperty {..}
    = ManagedQueryResultsConfigurationProperty
        {encryptionConfiguration = Prelude.pure newValue, ..}