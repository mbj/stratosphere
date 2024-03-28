module Stratosphere.CustomerProfiles.CalculatedAttributeDefinition.AttributeItemProperty (
        AttributeItemProperty(..), mkAttributeItemProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AttributeItemProperty
  = AttributeItemProperty {name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAttributeItemProperty ::
  Value Prelude.Text -> AttributeItemProperty
mkAttributeItemProperty name = AttributeItemProperty {name = name}
instance ToResourceProperties AttributeItemProperty where
  toResourceProperties AttributeItemProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::CalculatedAttributeDefinition.AttributeItem",
         supportsTags = Prelude.False, properties = ["Name" JSON..= name]}
instance JSON.ToJSON AttributeItemProperty where
  toJSON AttributeItemProperty {..}
    = JSON.object ["Name" JSON..= name]
instance Property "Name" AttributeItemProperty where
  type PropertyType "Name" AttributeItemProperty = Value Prelude.Text
  set newValue AttributeItemProperty {}
    = AttributeItemProperty {name = newValue, ..}