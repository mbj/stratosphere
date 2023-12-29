module Stratosphere.Lex.BotAlias.S3BucketLogDestinationProperty (
        S3BucketLogDestinationProperty(..),
        mkS3BucketLogDestinationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3BucketLogDestinationProperty
  = S3BucketLogDestinationProperty {kmsKeyArn :: (Prelude.Maybe (Value Prelude.Text)),
                                    logPrefix :: (Value Prelude.Text),
                                    s3BucketArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3BucketLogDestinationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> S3BucketLogDestinationProperty
mkS3BucketLogDestinationProperty logPrefix s3BucketArn
  = S3BucketLogDestinationProperty
      {logPrefix = logPrefix, s3BucketArn = s3BucketArn,
       kmsKeyArn = Prelude.Nothing}
instance ToResourceProperties S3BucketLogDestinationProperty where
  toResourceProperties S3BucketLogDestinationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::BotAlias.S3BucketLogDestination",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["LogPrefix" JSON..= logPrefix, "S3BucketArn" JSON..= s3BucketArn]
                           (Prelude.catMaybes [(JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn]))}
instance JSON.ToJSON S3BucketLogDestinationProperty where
  toJSON S3BucketLogDestinationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["LogPrefix" JSON..= logPrefix, "S3BucketArn" JSON..= s3BucketArn]
              (Prelude.catMaybes [(JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn])))
instance Property "KmsKeyArn" S3BucketLogDestinationProperty where
  type PropertyType "KmsKeyArn" S3BucketLogDestinationProperty = Value Prelude.Text
  set newValue S3BucketLogDestinationProperty {..}
    = S3BucketLogDestinationProperty
        {kmsKeyArn = Prelude.pure newValue, ..}
instance Property "LogPrefix" S3BucketLogDestinationProperty where
  type PropertyType "LogPrefix" S3BucketLogDestinationProperty = Value Prelude.Text
  set newValue S3BucketLogDestinationProperty {..}
    = S3BucketLogDestinationProperty {logPrefix = newValue, ..}
instance Property "S3BucketArn" S3BucketLogDestinationProperty where
  type PropertyType "S3BucketArn" S3BucketLogDestinationProperty = Value Prelude.Text
  set newValue S3BucketLogDestinationProperty {..}
    = S3BucketLogDestinationProperty {s3BucketArn = newValue, ..}