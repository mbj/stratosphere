module Stratosphere.QuickSight.DataSource.S3ParametersProperty (
        module Exports, S3ParametersProperty(..), mkS3ParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.DataSource.ManifestFileLocationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3ParametersProperty
  = S3ParametersProperty {manifestFileLocation :: ManifestFileLocationProperty,
                          roleArn :: (Prelude.Maybe (Value Prelude.Text))}
mkS3ParametersProperty ::
  ManifestFileLocationProperty -> S3ParametersProperty
mkS3ParametersProperty manifestFileLocation
  = S3ParametersProperty
      {manifestFileLocation = manifestFileLocation,
       roleArn = Prelude.Nothing}
instance ToResourceProperties S3ParametersProperty where
  toResourceProperties S3ParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSource.S3Parameters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ManifestFileLocation" JSON..= manifestFileLocation]
                           (Prelude.catMaybes [(JSON..=) "RoleArn" Prelude.<$> roleArn]))}
instance JSON.ToJSON S3ParametersProperty where
  toJSON S3ParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ManifestFileLocation" JSON..= manifestFileLocation]
              (Prelude.catMaybes [(JSON..=) "RoleArn" Prelude.<$> roleArn])))
instance Property "ManifestFileLocation" S3ParametersProperty where
  type PropertyType "ManifestFileLocation" S3ParametersProperty = ManifestFileLocationProperty
  set newValue S3ParametersProperty {..}
    = S3ParametersProperty {manifestFileLocation = newValue, ..}
instance Property "RoleArn" S3ParametersProperty where
  type PropertyType "RoleArn" S3ParametersProperty = Value Prelude.Text
  set newValue S3ParametersProperty {..}
    = S3ParametersProperty {roleArn = Prelude.pure newValue, ..}