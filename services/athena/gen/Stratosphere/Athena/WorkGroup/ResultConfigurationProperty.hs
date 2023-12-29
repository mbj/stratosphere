module Stratosphere.Athena.WorkGroup.ResultConfigurationProperty (
        module Exports, ResultConfigurationProperty(..),
        mkResultConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Athena.WorkGroup.AclConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Athena.WorkGroup.EncryptionConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResultConfigurationProperty
  = ResultConfigurationProperty {aclConfiguration :: (Prelude.Maybe AclConfigurationProperty),
                                 encryptionConfiguration :: (Prelude.Maybe EncryptionConfigurationProperty),
                                 expectedBucketOwner :: (Prelude.Maybe (Value Prelude.Text)),
                                 outputLocation :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResultConfigurationProperty :: ResultConfigurationProperty
mkResultConfigurationProperty
  = ResultConfigurationProperty
      {aclConfiguration = Prelude.Nothing,
       encryptionConfiguration = Prelude.Nothing,
       expectedBucketOwner = Prelude.Nothing,
       outputLocation = Prelude.Nothing}
instance ToResourceProperties ResultConfigurationProperty where
  toResourceProperties ResultConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Athena::WorkGroup.ResultConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AclConfiguration" Prelude.<$> aclConfiguration,
                            (JSON..=) "EncryptionConfiguration"
                              Prelude.<$> encryptionConfiguration,
                            (JSON..=) "ExpectedBucketOwner" Prelude.<$> expectedBucketOwner,
                            (JSON..=) "OutputLocation" Prelude.<$> outputLocation])}
instance JSON.ToJSON ResultConfigurationProperty where
  toJSON ResultConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AclConfiguration" Prelude.<$> aclConfiguration,
               (JSON..=) "EncryptionConfiguration"
                 Prelude.<$> encryptionConfiguration,
               (JSON..=) "ExpectedBucketOwner" Prelude.<$> expectedBucketOwner,
               (JSON..=) "OutputLocation" Prelude.<$> outputLocation]))
instance Property "AclConfiguration" ResultConfigurationProperty where
  type PropertyType "AclConfiguration" ResultConfigurationProperty = AclConfigurationProperty
  set newValue ResultConfigurationProperty {..}
    = ResultConfigurationProperty
        {aclConfiguration = Prelude.pure newValue, ..}
instance Property "EncryptionConfiguration" ResultConfigurationProperty where
  type PropertyType "EncryptionConfiguration" ResultConfigurationProperty = EncryptionConfigurationProperty
  set newValue ResultConfigurationProperty {..}
    = ResultConfigurationProperty
        {encryptionConfiguration = Prelude.pure newValue, ..}
instance Property "ExpectedBucketOwner" ResultConfigurationProperty where
  type PropertyType "ExpectedBucketOwner" ResultConfigurationProperty = Value Prelude.Text
  set newValue ResultConfigurationProperty {..}
    = ResultConfigurationProperty
        {expectedBucketOwner = Prelude.pure newValue, ..}
instance Property "OutputLocation" ResultConfigurationProperty where
  type PropertyType "OutputLocation" ResultConfigurationProperty = Value Prelude.Text
  set newValue ResultConfigurationProperty {..}
    = ResultConfigurationProperty
        {outputLocation = Prelude.pure newValue, ..}