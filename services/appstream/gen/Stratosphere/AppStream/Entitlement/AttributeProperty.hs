module Stratosphere.AppStream.Entitlement.AttributeProperty (
        AttributeProperty(..), mkAttributeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AttributeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-entitlement-attribute.html>
    AttributeProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-entitlement-attribute.html#cfn-appstream-entitlement-attribute-name>
                       name :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-entitlement-attribute.html#cfn-appstream-entitlement-attribute-value>
                       value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAttributeProperty ::
  Value Prelude.Text -> Value Prelude.Text -> AttributeProperty
mkAttributeProperty name value
  = AttributeProperty
      {haddock_workaround_ = (), name = name, value = value}
instance ToResourceProperties AttributeProperty where
  toResourceProperties AttributeProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppStream::Entitlement.Attribute",
         supportsTags = Prelude.False,
         properties = ["Name" JSON..= name, "Value" JSON..= value]}
instance JSON.ToJSON AttributeProperty where
  toJSON AttributeProperty {..}
    = JSON.object ["Name" JSON..= name, "Value" JSON..= value]
instance Property "Name" AttributeProperty where
  type PropertyType "Name" AttributeProperty = Value Prelude.Text
  set newValue AttributeProperty {..}
    = AttributeProperty {name = newValue, ..}
instance Property "Value" AttributeProperty where
  type PropertyType "Value" AttributeProperty = Value Prelude.Text
  set newValue AttributeProperty {..}
    = AttributeProperty {value = newValue, ..}