module Stratosphere.BCMDataExports.Export.S3DestinationProperty (
        module Exports, S3DestinationProperty(..), mkS3DestinationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.BCMDataExports.Export.S3OutputConfigurationsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3DestinationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bcmdataexports-export-s3destination.html>
    S3DestinationProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bcmdataexports-export-s3destination.html#cfn-bcmdataexports-export-s3destination-s3bucket>
                           s3Bucket :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bcmdataexports-export-s3destination.html#cfn-bcmdataexports-export-s3destination-s3outputconfigurations>
                           s3OutputConfigurations :: S3OutputConfigurationsProperty,
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bcmdataexports-export-s3destination.html#cfn-bcmdataexports-export-s3destination-s3prefix>
                           s3Prefix :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bcmdataexports-export-s3destination.html#cfn-bcmdataexports-export-s3destination-s3region>
                           s3Region :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3DestinationProperty ::
  Value Prelude.Text
  -> S3OutputConfigurationsProperty
     -> Value Prelude.Text
        -> Value Prelude.Text -> S3DestinationProperty
mkS3DestinationProperty
  s3Bucket
  s3OutputConfigurations
  s3Prefix
  s3Region
  = S3DestinationProperty
      {haddock_workaround_ = (), s3Bucket = s3Bucket,
       s3OutputConfigurations = s3OutputConfigurations,
       s3Prefix = s3Prefix, s3Region = s3Region}
instance ToResourceProperties S3DestinationProperty where
  toResourceProperties S3DestinationProperty {..}
    = ResourceProperties
        {awsType = "AWS::BCMDataExports::Export.S3Destination",
         supportsTags = Prelude.False,
         properties = ["S3Bucket" JSON..= s3Bucket,
                       "S3OutputConfigurations" JSON..= s3OutputConfigurations,
                       "S3Prefix" JSON..= s3Prefix, "S3Region" JSON..= s3Region]}
instance JSON.ToJSON S3DestinationProperty where
  toJSON S3DestinationProperty {..}
    = JSON.object
        ["S3Bucket" JSON..= s3Bucket,
         "S3OutputConfigurations" JSON..= s3OutputConfigurations,
         "S3Prefix" JSON..= s3Prefix, "S3Region" JSON..= s3Region]
instance Property "S3Bucket" S3DestinationProperty where
  type PropertyType "S3Bucket" S3DestinationProperty = Value Prelude.Text
  set newValue S3DestinationProperty {..}
    = S3DestinationProperty {s3Bucket = newValue, ..}
instance Property "S3OutputConfigurations" S3DestinationProperty where
  type PropertyType "S3OutputConfigurations" S3DestinationProperty = S3OutputConfigurationsProperty
  set newValue S3DestinationProperty {..}
    = S3DestinationProperty {s3OutputConfigurations = newValue, ..}
instance Property "S3Prefix" S3DestinationProperty where
  type PropertyType "S3Prefix" S3DestinationProperty = Value Prelude.Text
  set newValue S3DestinationProperty {..}
    = S3DestinationProperty {s3Prefix = newValue, ..}
instance Property "S3Region" S3DestinationProperty where
  type PropertyType "S3Region" S3DestinationProperty = Value Prelude.Text
  set newValue S3DestinationProperty {..}
    = S3DestinationProperty {s3Region = newValue, ..}