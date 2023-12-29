module Stratosphere.Glue.SecurityConfiguration.JobBookmarksEncryptionProperty (
        JobBookmarksEncryptionProperty(..),
        mkJobBookmarksEncryptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data JobBookmarksEncryptionProperty
  = JobBookmarksEncryptionProperty {jobBookmarksEncryptionMode :: (Prelude.Maybe (Value Prelude.Text)),
                                    kmsKeyArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkJobBookmarksEncryptionProperty :: JobBookmarksEncryptionProperty
mkJobBookmarksEncryptionProperty
  = JobBookmarksEncryptionProperty
      {jobBookmarksEncryptionMode = Prelude.Nothing,
       kmsKeyArn = Prelude.Nothing}
instance ToResourceProperties JobBookmarksEncryptionProperty where
  toResourceProperties JobBookmarksEncryptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::SecurityConfiguration.JobBookmarksEncryption",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "JobBookmarksEncryptionMode"
                              Prelude.<$> jobBookmarksEncryptionMode,
                            (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn])}
instance JSON.ToJSON JobBookmarksEncryptionProperty where
  toJSON JobBookmarksEncryptionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "JobBookmarksEncryptionMode"
                 Prelude.<$> jobBookmarksEncryptionMode,
               (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn]))
instance Property "JobBookmarksEncryptionMode" JobBookmarksEncryptionProperty where
  type PropertyType "JobBookmarksEncryptionMode" JobBookmarksEncryptionProperty = Value Prelude.Text
  set newValue JobBookmarksEncryptionProperty {..}
    = JobBookmarksEncryptionProperty
        {jobBookmarksEncryptionMode = Prelude.pure newValue, ..}
instance Property "KmsKeyArn" JobBookmarksEncryptionProperty where
  type PropertyType "KmsKeyArn" JobBookmarksEncryptionProperty = Value Prelude.Text
  set newValue JobBookmarksEncryptionProperty {..}
    = JobBookmarksEncryptionProperty
        {kmsKeyArn = Prelude.pure newValue, ..}