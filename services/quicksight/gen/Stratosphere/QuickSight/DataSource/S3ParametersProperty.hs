module Stratosphere.QuickSight.DataSource.S3ParametersProperty (
        module Exports, S3ParametersProperty(..), mkS3ParametersProperty
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.DataSource.ManifestFileLocationProperty as Exports
import Stratosphere.ResourceProperties
data S3ParametersProperty
  = S3ParametersProperty {manifestFileLocation :: ManifestFileLocationProperty}
mkS3ParametersProperty ::
  ManifestFileLocationProperty -> S3ParametersProperty
mkS3ParametersProperty manifestFileLocation
  = S3ParametersProperty
      {manifestFileLocation = manifestFileLocation}
instance ToResourceProperties S3ParametersProperty where
  toResourceProperties S3ParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSource.S3Parameters",
         properties = ["ManifestFileLocation" JSON..= manifestFileLocation]}
instance JSON.ToJSON S3ParametersProperty where
  toJSON S3ParametersProperty {..}
    = JSON.object ["ManifestFileLocation" JSON..= manifestFileLocation]
instance Property "ManifestFileLocation" S3ParametersProperty where
  type PropertyType "ManifestFileLocation" S3ParametersProperty = ManifestFileLocationProperty
  set newValue S3ParametersProperty {}
    = S3ParametersProperty {manifestFileLocation = newValue, ..}