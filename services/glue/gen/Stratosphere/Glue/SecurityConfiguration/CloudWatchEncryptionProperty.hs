module Stratosphere.Glue.SecurityConfiguration.CloudWatchEncryptionProperty (
        CloudWatchEncryptionProperty(..), mkCloudWatchEncryptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CloudWatchEncryptionProperty
  = CloudWatchEncryptionProperty {cloudWatchEncryptionMode :: (Prelude.Maybe (Value Prelude.Text)),
                                  kmsKeyArn :: (Prelude.Maybe (Value Prelude.Text))}
mkCloudWatchEncryptionProperty :: CloudWatchEncryptionProperty
mkCloudWatchEncryptionProperty
  = CloudWatchEncryptionProperty
      {cloudWatchEncryptionMode = Prelude.Nothing,
       kmsKeyArn = Prelude.Nothing}
instance ToResourceProperties CloudWatchEncryptionProperty where
  toResourceProperties CloudWatchEncryptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::SecurityConfiguration.CloudWatchEncryption",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CloudWatchEncryptionMode"
                              Prelude.<$> cloudWatchEncryptionMode,
                            (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn])}
instance JSON.ToJSON CloudWatchEncryptionProperty where
  toJSON CloudWatchEncryptionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CloudWatchEncryptionMode"
                 Prelude.<$> cloudWatchEncryptionMode,
               (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn]))
instance Property "CloudWatchEncryptionMode" CloudWatchEncryptionProperty where
  type PropertyType "CloudWatchEncryptionMode" CloudWatchEncryptionProperty = Value Prelude.Text
  set newValue CloudWatchEncryptionProperty {..}
    = CloudWatchEncryptionProperty
        {cloudWatchEncryptionMode = Prelude.pure newValue, ..}
instance Property "KmsKeyArn" CloudWatchEncryptionProperty where
  type PropertyType "KmsKeyArn" CloudWatchEncryptionProperty = Value Prelude.Text
  set newValue CloudWatchEncryptionProperty {..}
    = CloudWatchEncryptionProperty
        {kmsKeyArn = Prelude.pure newValue, ..}