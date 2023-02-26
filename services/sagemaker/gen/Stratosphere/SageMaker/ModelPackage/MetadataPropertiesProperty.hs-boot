module Stratosphere.SageMaker.ModelPackage.MetadataPropertiesProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MetadataPropertiesProperty :: Prelude.Type
instance ToResourceProperties MetadataPropertiesProperty
instance JSON.ToJSON MetadataPropertiesProperty