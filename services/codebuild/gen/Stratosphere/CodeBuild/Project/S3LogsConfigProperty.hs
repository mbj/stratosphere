module Stratosphere.CodeBuild.Project.S3LogsConfigProperty (
        S3LogsConfigProperty(..), mkS3LogsConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3LogsConfigProperty
  = S3LogsConfigProperty {encryptionDisabled :: (Prelude.Maybe (Value Prelude.Bool)),
                          location :: (Prelude.Maybe (Value Prelude.Text)),
                          status :: (Value Prelude.Text)}
mkS3LogsConfigProperty ::
  Value Prelude.Text -> S3LogsConfigProperty
mkS3LogsConfigProperty status
  = S3LogsConfigProperty
      {status = status, encryptionDisabled = Prelude.Nothing,
       location = Prelude.Nothing}
instance ToResourceProperties S3LogsConfigProperty where
  toResourceProperties S3LogsConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeBuild::Project.S3LogsConfig",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Status" JSON..= status]
                           (Prelude.catMaybes
                              [(JSON..=) "EncryptionDisabled" Prelude.<$> encryptionDisabled,
                               (JSON..=) "Location" Prelude.<$> location]))}
instance JSON.ToJSON S3LogsConfigProperty where
  toJSON S3LogsConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Status" JSON..= status]
              (Prelude.catMaybes
                 [(JSON..=) "EncryptionDisabled" Prelude.<$> encryptionDisabled,
                  (JSON..=) "Location" Prelude.<$> location])))
instance Property "EncryptionDisabled" S3LogsConfigProperty where
  type PropertyType "EncryptionDisabled" S3LogsConfigProperty = Value Prelude.Bool
  set newValue S3LogsConfigProperty {..}
    = S3LogsConfigProperty
        {encryptionDisabled = Prelude.pure newValue, ..}
instance Property "Location" S3LogsConfigProperty where
  type PropertyType "Location" S3LogsConfigProperty = Value Prelude.Text
  set newValue S3LogsConfigProperty {..}
    = S3LogsConfigProperty {location = Prelude.pure newValue, ..}
instance Property "Status" S3LogsConfigProperty where
  type PropertyType "Status" S3LogsConfigProperty = Value Prelude.Text
  set newValue S3LogsConfigProperty {..}
    = S3LogsConfigProperty {status = newValue, ..}