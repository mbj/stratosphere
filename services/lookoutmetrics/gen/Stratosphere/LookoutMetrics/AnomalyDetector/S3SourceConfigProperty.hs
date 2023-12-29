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
  = S3SourceConfigProperty {fileFormatDescriptor :: FileFormatDescriptorProperty,
                            historicalDataPathList :: (Prelude.Maybe (ValueList Prelude.Text)),
                            roleArn :: (Value Prelude.Text),
                            templatedPathList :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3SourceConfigProperty ::
  FileFormatDescriptorProperty
  -> Value Prelude.Text -> S3SourceConfigProperty
mkS3SourceConfigProperty fileFormatDescriptor roleArn
  = S3SourceConfigProperty
      {fileFormatDescriptor = fileFormatDescriptor, roleArn = roleArn,
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