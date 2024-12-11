module Stratosphere.Bedrock.DataSource.IntermediateStorageProperty (
        module Exports, IntermediateStorageProperty(..),
        mkIntermediateStorageProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.DataSource.S3LocationProperty as Exports
import Stratosphere.ResourceProperties
data IntermediateStorageProperty
  = IntermediateStorageProperty {s3Location :: S3LocationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIntermediateStorageProperty ::
  S3LocationProperty -> IntermediateStorageProperty
mkIntermediateStorageProperty s3Location
  = IntermediateStorageProperty {s3Location = s3Location}
instance ToResourceProperties IntermediateStorageProperty where
  toResourceProperties IntermediateStorageProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataSource.IntermediateStorage",
         supportsTags = Prelude.False,
         properties = ["S3Location" JSON..= s3Location]}
instance JSON.ToJSON IntermediateStorageProperty where
  toJSON IntermediateStorageProperty {..}
    = JSON.object ["S3Location" JSON..= s3Location]
instance Property "S3Location" IntermediateStorageProperty where
  type PropertyType "S3Location" IntermediateStorageProperty = S3LocationProperty
  set newValue IntermediateStorageProperty {}
    = IntermediateStorageProperty {s3Location = newValue, ..}