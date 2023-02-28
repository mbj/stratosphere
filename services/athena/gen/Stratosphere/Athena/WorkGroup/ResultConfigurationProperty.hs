module Stratosphere.Athena.WorkGroup.ResultConfigurationProperty (
        module Exports, ResultConfigurationProperty(..),
        mkResultConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Athena.WorkGroup.EncryptionConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResultConfigurationProperty
  = ResultConfigurationProperty {encryptionConfiguration :: (Prelude.Maybe EncryptionConfigurationProperty),
                                 outputLocation :: (Prelude.Maybe (Value Prelude.Text))}
mkResultConfigurationProperty :: ResultConfigurationProperty
mkResultConfigurationProperty
  = ResultConfigurationProperty
      {encryptionConfiguration = Prelude.Nothing,
       outputLocation = Prelude.Nothing}
instance ToResourceProperties ResultConfigurationProperty where
  toResourceProperties ResultConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Athena::WorkGroup.ResultConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EncryptionConfiguration"
                              Prelude.<$> encryptionConfiguration,
                            (JSON..=) "OutputLocation" Prelude.<$> outputLocation])}
instance JSON.ToJSON ResultConfigurationProperty where
  toJSON ResultConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EncryptionConfiguration"
                 Prelude.<$> encryptionConfiguration,
               (JSON..=) "OutputLocation" Prelude.<$> outputLocation]))
instance Property "EncryptionConfiguration" ResultConfigurationProperty where
  type PropertyType "EncryptionConfiguration" ResultConfigurationProperty = EncryptionConfigurationProperty
  set newValue ResultConfigurationProperty {..}
    = ResultConfigurationProperty
        {encryptionConfiguration = Prelude.pure newValue, ..}
instance Property "OutputLocation" ResultConfigurationProperty where
  type PropertyType "OutputLocation" ResultConfigurationProperty = Value Prelude.Text
  set newValue ResultConfigurationProperty {..}
    = ResultConfigurationProperty
        {outputLocation = Prelude.pure newValue, ..}