module Stratosphere.CustomerProfiles.CalculatedAttributeDefinition.AttributeDetailsProperty (
        module Exports, AttributeDetailsProperty(..),
        mkAttributeDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CustomerProfiles.CalculatedAttributeDefinition.AttributeItemProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AttributeDetailsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-calculatedattributedefinition-attributedetails.html>
    AttributeDetailsProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-calculatedattributedefinition-attributedetails.html#cfn-customerprofiles-calculatedattributedefinition-attributedetails-attributes>
                              attributes :: [AttributeItemProperty],
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-calculatedattributedefinition-attributedetails.html#cfn-customerprofiles-calculatedattributedefinition-attributedetails-expression>
                              expression :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAttributeDetailsProperty ::
  [AttributeItemProperty]
  -> Value Prelude.Text -> AttributeDetailsProperty
mkAttributeDetailsProperty attributes expression
  = AttributeDetailsProperty
      {haddock_workaround_ = (), attributes = attributes,
       expression = expression}
instance ToResourceProperties AttributeDetailsProperty where
  toResourceProperties AttributeDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::CalculatedAttributeDefinition.AttributeDetails",
         supportsTags = Prelude.False,
         properties = ["Attributes" JSON..= attributes,
                       "Expression" JSON..= expression]}
instance JSON.ToJSON AttributeDetailsProperty where
  toJSON AttributeDetailsProperty {..}
    = JSON.object
        ["Attributes" JSON..= attributes, "Expression" JSON..= expression]
instance Property "Attributes" AttributeDetailsProperty where
  type PropertyType "Attributes" AttributeDetailsProperty = [AttributeItemProperty]
  set newValue AttributeDetailsProperty {..}
    = AttributeDetailsProperty {attributes = newValue, ..}
instance Property "Expression" AttributeDetailsProperty where
  type PropertyType "Expression" AttributeDetailsProperty = Value Prelude.Text
  set newValue AttributeDetailsProperty {..}
    = AttributeDetailsProperty {expression = newValue, ..}