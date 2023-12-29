module Stratosphere.KinesisFirehose.DeliveryStream.EncryptionConfigurationProperty (
        module Exports, EncryptionConfigurationProperty(..),
        mkEncryptionConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.KMSEncryptionConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EncryptionConfigurationProperty
  = EncryptionConfigurationProperty {kMSEncryptionConfig :: (Prelude.Maybe KMSEncryptionConfigProperty),
                                     noEncryptionConfig :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEncryptionConfigurationProperty ::
  EncryptionConfigurationProperty
mkEncryptionConfigurationProperty
  = EncryptionConfigurationProperty
      {kMSEncryptionConfig = Prelude.Nothing,
       noEncryptionConfig = Prelude.Nothing}
instance ToResourceProperties EncryptionConfigurationProperty where
  toResourceProperties EncryptionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.EncryptionConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "KMSEncryptionConfig" Prelude.<$> kMSEncryptionConfig,
                            (JSON..=) "NoEncryptionConfig" Prelude.<$> noEncryptionConfig])}
instance JSON.ToJSON EncryptionConfigurationProperty where
  toJSON EncryptionConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "KMSEncryptionConfig" Prelude.<$> kMSEncryptionConfig,
               (JSON..=) "NoEncryptionConfig" Prelude.<$> noEncryptionConfig]))
instance Property "KMSEncryptionConfig" EncryptionConfigurationProperty where
  type PropertyType "KMSEncryptionConfig" EncryptionConfigurationProperty = KMSEncryptionConfigProperty
  set newValue EncryptionConfigurationProperty {..}
    = EncryptionConfigurationProperty
        {kMSEncryptionConfig = Prelude.pure newValue, ..}
instance Property "NoEncryptionConfig" EncryptionConfigurationProperty where
  type PropertyType "NoEncryptionConfig" EncryptionConfigurationProperty = Value Prelude.Text
  set newValue EncryptionConfigurationProperty {..}
    = EncryptionConfigurationProperty
        {noEncryptionConfig = Prelude.pure newValue, ..}