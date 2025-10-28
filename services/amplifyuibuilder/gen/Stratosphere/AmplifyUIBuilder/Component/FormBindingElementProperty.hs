module Stratosphere.AmplifyUIBuilder.Component.FormBindingElementProperty (
        FormBindingElementProperty(..), mkFormBindingElementProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FormBindingElementProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-formbindingelement.html>
    FormBindingElementProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-formbindingelement.html#cfn-amplifyuibuilder-component-formbindingelement-element>
                                element :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-formbindingelement.html#cfn-amplifyuibuilder-component-formbindingelement-property>
                                property :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFormBindingElementProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> FormBindingElementProperty
mkFormBindingElementProperty element property
  = FormBindingElementProperty
      {haddock_workaround_ = (), element = element, property = property}
instance ToResourceProperties FormBindingElementProperty where
  toResourceProperties FormBindingElementProperty {..}
    = ResourceProperties
        {awsType = "AWS::AmplifyUIBuilder::Component.FormBindingElement",
         supportsTags = Prelude.False,
         properties = ["Element" JSON..= element,
                       "Property" JSON..= property]}
instance JSON.ToJSON FormBindingElementProperty where
  toJSON FormBindingElementProperty {..}
    = JSON.object
        ["Element" JSON..= element, "Property" JSON..= property]
instance Property "Element" FormBindingElementProperty where
  type PropertyType "Element" FormBindingElementProperty = Value Prelude.Text
  set newValue FormBindingElementProperty {..}
    = FormBindingElementProperty {element = newValue, ..}
instance Property "Property" FormBindingElementProperty where
  type PropertyType "Property" FormBindingElementProperty = Value Prelude.Text
  set newValue FormBindingElementProperty {..}
    = FormBindingElementProperty {property = newValue, ..}