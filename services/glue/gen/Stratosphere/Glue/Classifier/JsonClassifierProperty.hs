module Stratosphere.Glue.Classifier.JsonClassifierProperty (
        JsonClassifierProperty(..), mkJsonClassifierProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data JsonClassifierProperty
  = JsonClassifierProperty {jsonPath :: (Value Prelude.Text),
                            name :: (Prelude.Maybe (Value Prelude.Text))}
mkJsonClassifierProperty ::
  Value Prelude.Text -> JsonClassifierProperty
mkJsonClassifierProperty jsonPath
  = JsonClassifierProperty
      {jsonPath = jsonPath, name = Prelude.Nothing}
instance ToResourceProperties JsonClassifierProperty where
  toResourceProperties JsonClassifierProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Classifier.JsonClassifier",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["JsonPath" JSON..= jsonPath]
                           (Prelude.catMaybes [(JSON..=) "Name" Prelude.<$> name]))}
instance JSON.ToJSON JsonClassifierProperty where
  toJSON JsonClassifierProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["JsonPath" JSON..= jsonPath]
              (Prelude.catMaybes [(JSON..=) "Name" Prelude.<$> name])))
instance Property "JsonPath" JsonClassifierProperty where
  type PropertyType "JsonPath" JsonClassifierProperty = Value Prelude.Text
  set newValue JsonClassifierProperty {..}
    = JsonClassifierProperty {jsonPath = newValue, ..}
instance Property "Name" JsonClassifierProperty where
  type PropertyType "Name" JsonClassifierProperty = Value Prelude.Text
  set newValue JsonClassifierProperty {..}
    = JsonClassifierProperty {name = Prelude.pure newValue, ..}