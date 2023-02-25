module Stratosphere.SageMaker.DataQualityJobDefinition.JsonProperty (
        JsonProperty(..), mkJsonProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data JsonProperty
  = JsonProperty {line :: (Prelude.Maybe (Value Prelude.Bool))}
mkJsonProperty :: JsonProperty
mkJsonProperty = JsonProperty {line = Prelude.Nothing}
instance ToResourceProperties JsonProperty where
  toResourceProperties JsonProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::DataQualityJobDefinition.Json",
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Line" Prelude.<$> line])}
instance JSON.ToJSON JsonProperty where
  toJSON JsonProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Line" Prelude.<$> line]))
instance Property "Line" JsonProperty where
  type PropertyType "Line" JsonProperty = Value Prelude.Bool
  set newValue JsonProperty {}
    = JsonProperty {line = Prelude.pure newValue, ..}