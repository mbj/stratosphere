module Stratosphere.DataZone.FormType.ModelProperty (
        ModelProperty(..), mkModelProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ModelProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-formtype-model.html>
    ModelProperty {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-formtype-model.html#cfn-datazone-formtype-model-smithy>
                   smithy :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkModelProperty :: ModelProperty
mkModelProperty
  = ModelProperty
      {haddock_workaround_ = (), smithy = Prelude.Nothing}
instance ToResourceProperties ModelProperty where
  toResourceProperties ModelProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::FormType.Model",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Smithy" Prelude.<$> smithy])}
instance JSON.ToJSON ModelProperty where
  toJSON ModelProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Smithy" Prelude.<$> smithy]))
instance Property "Smithy" ModelProperty where
  type PropertyType "Smithy" ModelProperty = Value Prelude.Text
  set newValue ModelProperty {..}
    = ModelProperty {smithy = Prelude.pure newValue, ..}