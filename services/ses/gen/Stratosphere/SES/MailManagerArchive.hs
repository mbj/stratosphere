module Stratosphere.SES.MailManagerArchive (
        module Exports, MailManagerArchive(..), mkMailManagerArchive
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SES.MailManagerArchive.ArchiveRetentionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data MailManagerArchive
  = MailManagerArchive {archiveName :: (Prelude.Maybe (Value Prelude.Text)),
                        kmsKeyArn :: (Prelude.Maybe (Value Prelude.Text)),
                        retention :: (Prelude.Maybe ArchiveRetentionProperty),
                        tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMailManagerArchive :: MailManagerArchive
mkMailManagerArchive
  = MailManagerArchive
      {archiveName = Prelude.Nothing, kmsKeyArn = Prelude.Nothing,
       retention = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties MailManagerArchive where
  toResourceProperties MailManagerArchive {..}
    = ResourceProperties
        {awsType = "AWS::SES::MailManagerArchive",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ArchiveName" Prelude.<$> archiveName,
                            (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn,
                            (JSON..=) "Retention" Prelude.<$> retention,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON MailManagerArchive where
  toJSON MailManagerArchive {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ArchiveName" Prelude.<$> archiveName,
               (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn,
               (JSON..=) "Retention" Prelude.<$> retention,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "ArchiveName" MailManagerArchive where
  type PropertyType "ArchiveName" MailManagerArchive = Value Prelude.Text
  set newValue MailManagerArchive {..}
    = MailManagerArchive {archiveName = Prelude.pure newValue, ..}
instance Property "KmsKeyArn" MailManagerArchive where
  type PropertyType "KmsKeyArn" MailManagerArchive = Value Prelude.Text
  set newValue MailManagerArchive {..}
    = MailManagerArchive {kmsKeyArn = Prelude.pure newValue, ..}
instance Property "Retention" MailManagerArchive where
  type PropertyType "Retention" MailManagerArchive = ArchiveRetentionProperty
  set newValue MailManagerArchive {..}
    = MailManagerArchive {retention = Prelude.pure newValue, ..}
instance Property "Tags" MailManagerArchive where
  type PropertyType "Tags" MailManagerArchive = [Tag]
  set newValue MailManagerArchive {..}
    = MailManagerArchive {tags = Prelude.pure newValue, ..}