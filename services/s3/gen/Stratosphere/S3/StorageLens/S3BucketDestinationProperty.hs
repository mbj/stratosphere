module Stratosphere.S3.StorageLens.S3BucketDestinationProperty (
        module Exports, S3BucketDestinationProperty(..),
        mkS3BucketDestinationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.StorageLens.EncryptionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3BucketDestinationProperty
  = S3BucketDestinationProperty {accountId :: (Value Prelude.Text),
                                 arn :: (Value Prelude.Text),
                                 encryption :: (Prelude.Maybe EncryptionProperty),
                                 format :: (Value Prelude.Text),
                                 outputSchemaVersion :: (Value Prelude.Text),
                                 prefix :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3BucketDestinationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text -> S3BucketDestinationProperty
mkS3BucketDestinationProperty
  accountId
  arn
  format
  outputSchemaVersion
  = S3BucketDestinationProperty
      {accountId = accountId, arn = arn, format = format,
       outputSchemaVersion = outputSchemaVersion,
       encryption = Prelude.Nothing, prefix = Prelude.Nothing}
instance ToResourceProperties S3BucketDestinationProperty where
  toResourceProperties S3BucketDestinationProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::StorageLens.S3BucketDestination",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AccountId" JSON..= accountId, "Arn" JSON..= arn,
                            "Format" JSON..= format,
                            "OutputSchemaVersion" JSON..= outputSchemaVersion]
                           (Prelude.catMaybes
                              [(JSON..=) "Encryption" Prelude.<$> encryption,
                               (JSON..=) "Prefix" Prelude.<$> prefix]))}
instance JSON.ToJSON S3BucketDestinationProperty where
  toJSON S3BucketDestinationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AccountId" JSON..= accountId, "Arn" JSON..= arn,
               "Format" JSON..= format,
               "OutputSchemaVersion" JSON..= outputSchemaVersion]
              (Prelude.catMaybes
                 [(JSON..=) "Encryption" Prelude.<$> encryption,
                  (JSON..=) "Prefix" Prelude.<$> prefix])))
instance Property "AccountId" S3BucketDestinationProperty where
  type PropertyType "AccountId" S3BucketDestinationProperty = Value Prelude.Text
  set newValue S3BucketDestinationProperty {..}
    = S3BucketDestinationProperty {accountId = newValue, ..}
instance Property "Arn" S3BucketDestinationProperty where
  type PropertyType "Arn" S3BucketDestinationProperty = Value Prelude.Text
  set newValue S3BucketDestinationProperty {..}
    = S3BucketDestinationProperty {arn = newValue, ..}
instance Property "Encryption" S3BucketDestinationProperty where
  type PropertyType "Encryption" S3BucketDestinationProperty = EncryptionProperty
  set newValue S3BucketDestinationProperty {..}
    = S3BucketDestinationProperty
        {encryption = Prelude.pure newValue, ..}
instance Property "Format" S3BucketDestinationProperty where
  type PropertyType "Format" S3BucketDestinationProperty = Value Prelude.Text
  set newValue S3BucketDestinationProperty {..}
    = S3BucketDestinationProperty {format = newValue, ..}
instance Property "OutputSchemaVersion" S3BucketDestinationProperty where
  type PropertyType "OutputSchemaVersion" S3BucketDestinationProperty = Value Prelude.Text
  set newValue S3BucketDestinationProperty {..}
    = S3BucketDestinationProperty {outputSchemaVersion = newValue, ..}
instance Property "Prefix" S3BucketDestinationProperty where
  type PropertyType "Prefix" S3BucketDestinationProperty = Value Prelude.Text
  set newValue S3BucketDestinationProperty {..}
    = S3BucketDestinationProperty {prefix = Prelude.pure newValue, ..}