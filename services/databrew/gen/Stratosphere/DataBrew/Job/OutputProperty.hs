module Stratosphere.DataBrew.Job.OutputProperty (
        module Exports, OutputProperty(..), mkOutputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataBrew.Job.OutputFormatOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.DataBrew.Job.S3LocationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OutputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-job-output.html>
    OutputProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-job-output.html#cfn-databrew-job-output-compressionformat>
                    compressionFormat :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-job-output.html#cfn-databrew-job-output-format>
                    format :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-job-output.html#cfn-databrew-job-output-formatoptions>
                    formatOptions :: (Prelude.Maybe OutputFormatOptionsProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-job-output.html#cfn-databrew-job-output-location>
                    location :: S3LocationProperty,
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-job-output.html#cfn-databrew-job-output-maxoutputfiles>
                    maxOutputFiles :: (Prelude.Maybe (Value Prelude.Integer)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-job-output.html#cfn-databrew-job-output-overwrite>
                    overwrite :: (Prelude.Maybe (Value Prelude.Bool)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-job-output.html#cfn-databrew-job-output-partitioncolumns>
                    partitionColumns :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOutputProperty :: S3LocationProperty -> OutputProperty
mkOutputProperty location
  = OutputProperty
      {haddock_workaround_ = (), location = location,
       compressionFormat = Prelude.Nothing, format = Prelude.Nothing,
       formatOptions = Prelude.Nothing, maxOutputFiles = Prelude.Nothing,
       overwrite = Prelude.Nothing, partitionColumns = Prelude.Nothing}
instance ToResourceProperties OutputProperty where
  toResourceProperties OutputProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataBrew::Job.Output",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Location" JSON..= location]
                           (Prelude.catMaybes
                              [(JSON..=) "CompressionFormat" Prelude.<$> compressionFormat,
                               (JSON..=) "Format" Prelude.<$> format,
                               (JSON..=) "FormatOptions" Prelude.<$> formatOptions,
                               (JSON..=) "MaxOutputFiles" Prelude.<$> maxOutputFiles,
                               (JSON..=) "Overwrite" Prelude.<$> overwrite,
                               (JSON..=) "PartitionColumns" Prelude.<$> partitionColumns]))}
instance JSON.ToJSON OutputProperty where
  toJSON OutputProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Location" JSON..= location]
              (Prelude.catMaybes
                 [(JSON..=) "CompressionFormat" Prelude.<$> compressionFormat,
                  (JSON..=) "Format" Prelude.<$> format,
                  (JSON..=) "FormatOptions" Prelude.<$> formatOptions,
                  (JSON..=) "MaxOutputFiles" Prelude.<$> maxOutputFiles,
                  (JSON..=) "Overwrite" Prelude.<$> overwrite,
                  (JSON..=) "PartitionColumns" Prelude.<$> partitionColumns])))
instance Property "CompressionFormat" OutputProperty where
  type PropertyType "CompressionFormat" OutputProperty = Value Prelude.Text
  set newValue OutputProperty {..}
    = OutputProperty {compressionFormat = Prelude.pure newValue, ..}
instance Property "Format" OutputProperty where
  type PropertyType "Format" OutputProperty = Value Prelude.Text
  set newValue OutputProperty {..}
    = OutputProperty {format = Prelude.pure newValue, ..}
instance Property "FormatOptions" OutputProperty where
  type PropertyType "FormatOptions" OutputProperty = OutputFormatOptionsProperty
  set newValue OutputProperty {..}
    = OutputProperty {formatOptions = Prelude.pure newValue, ..}
instance Property "Location" OutputProperty where
  type PropertyType "Location" OutputProperty = S3LocationProperty
  set newValue OutputProperty {..}
    = OutputProperty {location = newValue, ..}
instance Property "MaxOutputFiles" OutputProperty where
  type PropertyType "MaxOutputFiles" OutputProperty = Value Prelude.Integer
  set newValue OutputProperty {..}
    = OutputProperty {maxOutputFiles = Prelude.pure newValue, ..}
instance Property "Overwrite" OutputProperty where
  type PropertyType "Overwrite" OutputProperty = Value Prelude.Bool
  set newValue OutputProperty {..}
    = OutputProperty {overwrite = Prelude.pure newValue, ..}
instance Property "PartitionColumns" OutputProperty where
  type PropertyType "PartitionColumns" OutputProperty = ValueList Prelude.Text
  set newValue OutputProperty {..}
    = OutputProperty {partitionColumns = Prelude.pure newValue, ..}