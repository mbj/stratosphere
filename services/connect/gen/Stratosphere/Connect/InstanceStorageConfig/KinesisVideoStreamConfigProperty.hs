module Stratosphere.Connect.InstanceStorageConfig.KinesisVideoStreamConfigProperty (
        module Exports, KinesisVideoStreamConfigProperty(..),
        mkKinesisVideoStreamConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.InstanceStorageConfig.EncryptionConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KinesisVideoStreamConfigProperty
  = KinesisVideoStreamConfigProperty {encryptionConfig :: EncryptionConfigProperty,
                                      prefix :: (Value Prelude.Text),
                                      retentionPeriodHours :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKinesisVideoStreamConfigProperty ::
  EncryptionConfigProperty
  -> Value Prelude.Text
     -> Value Prelude.Double -> KinesisVideoStreamConfigProperty
mkKinesisVideoStreamConfigProperty
  encryptionConfig
  prefix
  retentionPeriodHours
  = KinesisVideoStreamConfigProperty
      {encryptionConfig = encryptionConfig, prefix = prefix,
       retentionPeriodHours = retentionPeriodHours}
instance ToResourceProperties KinesisVideoStreamConfigProperty where
  toResourceProperties KinesisVideoStreamConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::InstanceStorageConfig.KinesisVideoStreamConfig",
         supportsTags = Prelude.False,
         properties = ["EncryptionConfig" JSON..= encryptionConfig,
                       "Prefix" JSON..= prefix,
                       "RetentionPeriodHours" JSON..= retentionPeriodHours]}
instance JSON.ToJSON KinesisVideoStreamConfigProperty where
  toJSON KinesisVideoStreamConfigProperty {..}
    = JSON.object
        ["EncryptionConfig" JSON..= encryptionConfig,
         "Prefix" JSON..= prefix,
         "RetentionPeriodHours" JSON..= retentionPeriodHours]
instance Property "EncryptionConfig" KinesisVideoStreamConfigProperty where
  type PropertyType "EncryptionConfig" KinesisVideoStreamConfigProperty = EncryptionConfigProperty
  set newValue KinesisVideoStreamConfigProperty {..}
    = KinesisVideoStreamConfigProperty
        {encryptionConfig = newValue, ..}
instance Property "Prefix" KinesisVideoStreamConfigProperty where
  type PropertyType "Prefix" KinesisVideoStreamConfigProperty = Value Prelude.Text
  set newValue KinesisVideoStreamConfigProperty {..}
    = KinesisVideoStreamConfigProperty {prefix = newValue, ..}
instance Property "RetentionPeriodHours" KinesisVideoStreamConfigProperty where
  type PropertyType "RetentionPeriodHours" KinesisVideoStreamConfigProperty = Value Prelude.Double
  set newValue KinesisVideoStreamConfigProperty {..}
    = KinesisVideoStreamConfigProperty
        {retentionPeriodHours = newValue, ..}