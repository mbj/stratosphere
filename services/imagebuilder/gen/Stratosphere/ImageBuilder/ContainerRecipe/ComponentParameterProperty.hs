module Stratosphere.ImageBuilder.ContainerRecipe.ComponentParameterProperty (
        ComponentParameterProperty(..), mkComponentParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ComponentParameterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-containerrecipe-componentparameter.html>
    ComponentParameterProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-containerrecipe-componentparameter.html#cfn-imagebuilder-containerrecipe-componentparameter-name>
                                name :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-containerrecipe-componentparameter.html#cfn-imagebuilder-containerrecipe-componentparameter-value>
                                value :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkComponentParameterProperty ::
  Value Prelude.Text
  -> ValueList Prelude.Text -> ComponentParameterProperty
mkComponentParameterProperty name value
  = ComponentParameterProperty
      {haddock_workaround_ = (), name = name, value = value}
instance ToResourceProperties ComponentParameterProperty where
  toResourceProperties ComponentParameterProperty {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::ContainerRecipe.ComponentParameter",
         supportsTags = Prelude.False,
         properties = ["Name" JSON..= name, "Value" JSON..= value]}
instance JSON.ToJSON ComponentParameterProperty where
  toJSON ComponentParameterProperty {..}
    = JSON.object ["Name" JSON..= name, "Value" JSON..= value]
instance Property "Name" ComponentParameterProperty where
  type PropertyType "Name" ComponentParameterProperty = Value Prelude.Text
  set newValue ComponentParameterProperty {..}
    = ComponentParameterProperty {name = newValue, ..}
instance Property "Value" ComponentParameterProperty where
  type PropertyType "Value" ComponentParameterProperty = ValueList Prelude.Text
  set newValue ComponentParameterProperty {..}
    = ComponentParameterProperty {value = newValue, ..}