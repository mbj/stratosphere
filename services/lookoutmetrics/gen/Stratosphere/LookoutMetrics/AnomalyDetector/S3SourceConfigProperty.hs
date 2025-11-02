module Stratosphere.LookoutMetrics.AnomalyDetector.S3SourceConfigProperty (
        module Exports, S3SourceConfigProperty(..),
        mkS3SourceConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.LookoutMetrics.AnomalyDetector.FileFormatDescriptorProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3SourceConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-s3sourceconfig.html>
    S3SourceConfigProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-s3sourceconfig.html#cfn-lookoutmetrics-anomalydetector-s3sourceconfig-fileformatdescriptor>
                            fileFormatDescriptor :: FileFormatDescriptorProperty,
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-s3sourceconfig.html#cfn-lookoutmetrics-anomalydetector-s3sourceconfig-historicaldatapathlist>
                            historicalDataPathList :: (Prelude.Maybe (ValueList Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-s3sourceconfig.html#cfn-lookoutmetrics-anomalydetector-s3sourceconfig-rolearn>
                            roleArn :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-s3sourceconfig.html#cfn-lookoutmetrics-anomalydetector-s3sourceconfig-templatedpathlist>
                            templatedPathList :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3SourceConfigProperty ::
  FileFormatDescriptorProperty
  -> Value Prelude.Text -> S3SourceConfigProperty
mkS3SourceConfigProperty fileFormatDescriptor roleArn
  = S3SourceConfigProperty
      {haddock_workaround_ = (),
       fileFormatDescriptor = fileFormatDescriptor, roleArn = roleArn,
       historicalDataPathList = Prelude.Nothing,
       templatedPathList = Prelude.Nothing}
instance ToResourceProperties S3SourceConfigProperty where
  toResourceProperties S3SourceConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::LookoutMetrics::AnomalyDetector.S3SourceConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FileFormatDescriptor" JSON..= fileFormatDescriptor,
                            "RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "HistoricalDataPathList"
                                 Prelude.<$> historicalDataPathList,
                               (JSON..=) "TemplatedPathList" Prelude.<$> templatedPathList]))}
instance JSON.ToJSON S3SourceConfigProperty where
  toJSON S3SourceConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FileFormatDescriptor" JSON..= fileFormatDescriptor,
               "RoleArn" JSON..= roleArn]
              (Prelude.catMaybes
                 [(JSON..=) "HistoricalDataPathList"
                    Prelude.<$> historicalDataPathList,
                  (JSON..=) "TemplatedPathList" Prelude.<$> templatedPathList])))
instance Property "FileFormatDescriptor" S3SourceConfigProperty where
  type PropertyType "FileFormatDescriptor" S3SourceConfigProperty = FileFormatDescriptorProperty
  set newValue S3SourceConfigProperty {..}
    = S3SourceConfigProperty {fileFormatDescriptor = newValue, ..}
instance Property "HistoricalDataPathList" S3SourceConfigProperty where
  type PropertyType "HistoricalDataPathList" S3SourceConfigProperty = ValueList Prelude.Text
  set newValue S3SourceConfigProperty {..}
    = S3SourceConfigProperty
        {historicalDataPathList = Prelude.pure newValue, ..}
instance Property "RoleArn" S3SourceConfigProperty where
  type PropertyType "RoleArn" S3SourceConfigProperty = Value Prelude.Text
  set newValue S3SourceConfigProperty {..}
    = S3SourceConfigProperty {roleArn = newValue, ..}
instance Property "TemplatedPathList" S3SourceConfigProperty where
  type PropertyType "TemplatedPathList" S3SourceConfigProperty = ValueList Prelude.Text
  set newValue S3SourceConfigProperty {..}
    = S3SourceConfigProperty
        {templatedPathList = Prelude.pure newValue, ..}