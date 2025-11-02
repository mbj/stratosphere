module Stratosphere.BCMDataExports.Export.S3OutputConfigurationsProperty (
        S3OutputConfigurationsProperty(..),
        mkS3OutputConfigurationsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3OutputConfigurationsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bcmdataexports-export-s3outputconfigurations.html>
    S3OutputConfigurationsProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bcmdataexports-export-s3outputconfigurations.html#cfn-bcmdataexports-export-s3outputconfigurations-compression>
                                    compression :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bcmdataexports-export-s3outputconfigurations.html#cfn-bcmdataexports-export-s3outputconfigurations-format>
                                    format :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bcmdataexports-export-s3outputconfigurations.html#cfn-bcmdataexports-export-s3outputconfigurations-outputtype>
                                    outputType :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bcmdataexports-export-s3outputconfigurations.html#cfn-bcmdataexports-export-s3outputconfigurations-overwrite>
                                    overwrite :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3OutputConfigurationsProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text -> S3OutputConfigurationsProperty
mkS3OutputConfigurationsProperty
  compression
  format
  outputType
  overwrite
  = S3OutputConfigurationsProperty
      {haddock_workaround_ = (), compression = compression,
       format = format, outputType = outputType, overwrite = overwrite}
instance ToResourceProperties S3OutputConfigurationsProperty where
  toResourceProperties S3OutputConfigurationsProperty {..}
    = ResourceProperties
        {awsType = "AWS::BCMDataExports::Export.S3OutputConfigurations",
         supportsTags = Prelude.False,
         properties = ["Compression" JSON..= compression,
                       "Format" JSON..= format, "OutputType" JSON..= outputType,
                       "Overwrite" JSON..= overwrite]}
instance JSON.ToJSON S3OutputConfigurationsProperty where
  toJSON S3OutputConfigurationsProperty {..}
    = JSON.object
        ["Compression" JSON..= compression, "Format" JSON..= format,
         "OutputType" JSON..= outputType, "Overwrite" JSON..= overwrite]
instance Property "Compression" S3OutputConfigurationsProperty where
  type PropertyType "Compression" S3OutputConfigurationsProperty = Value Prelude.Text
  set newValue S3OutputConfigurationsProperty {..}
    = S3OutputConfigurationsProperty {compression = newValue, ..}
instance Property "Format" S3OutputConfigurationsProperty where
  type PropertyType "Format" S3OutputConfigurationsProperty = Value Prelude.Text
  set newValue S3OutputConfigurationsProperty {..}
    = S3OutputConfigurationsProperty {format = newValue, ..}
instance Property "OutputType" S3OutputConfigurationsProperty where
  type PropertyType "OutputType" S3OutputConfigurationsProperty = Value Prelude.Text
  set newValue S3OutputConfigurationsProperty {..}
    = S3OutputConfigurationsProperty {outputType = newValue, ..}
instance Property "Overwrite" S3OutputConfigurationsProperty where
  type PropertyType "Overwrite" S3OutputConfigurationsProperty = Value Prelude.Text
  set newValue S3OutputConfigurationsProperty {..}
    = S3OutputConfigurationsProperty {overwrite = newValue, ..}