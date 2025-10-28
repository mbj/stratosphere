module Stratosphere.Glue.Classifier.JsonClassifierProperty (
        JsonClassifierProperty(..), mkJsonClassifierProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data JsonClassifierProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-jsonclassifier.html>
    JsonClassifierProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-jsonclassifier.html#cfn-glue-classifier-jsonclassifier-jsonpath>
                            jsonPath :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-jsonclassifier.html#cfn-glue-classifier-jsonclassifier-name>
                            name :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkJsonClassifierProperty ::
  Value Prelude.Text -> JsonClassifierProperty
mkJsonClassifierProperty jsonPath
  = JsonClassifierProperty
      {haddock_workaround_ = (), jsonPath = jsonPath,
       name = Prelude.Nothing}
instance ToResourceProperties JsonClassifierProperty where
  toResourceProperties JsonClassifierProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Classifier.JsonClassifier",
         supportsTags = Prelude.False,
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