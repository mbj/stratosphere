module Stratosphere.ServiceCatalogAppRegistry.AttributeGroup (
        AttributeGroup(..), mkAttributeGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AttributeGroup
  = AttributeGroup {attributes :: JSON.Object,
                    description :: (Prelude.Maybe (Value Prelude.Text)),
                    name :: (Value Prelude.Text),
                    tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
mkAttributeGroup ::
  JSON.Object -> Value Prelude.Text -> AttributeGroup
mkAttributeGroup attributes name
  = AttributeGroup
      {attributes = attributes, name = name,
       description = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties AttributeGroup where
  toResourceProperties AttributeGroup {..}
    = ResourceProperties
        {awsType = "AWS::ServiceCatalogAppRegistry::AttributeGroup",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Attributes" JSON..= attributes, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON AttributeGroup where
  toJSON AttributeGroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Attributes" JSON..= attributes, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Attributes" AttributeGroup where
  type PropertyType "Attributes" AttributeGroup = JSON.Object
  set newValue AttributeGroup {..}
    = AttributeGroup {attributes = newValue, ..}
instance Property "Description" AttributeGroup where
  type PropertyType "Description" AttributeGroup = Value Prelude.Text
  set newValue AttributeGroup {..}
    = AttributeGroup {description = Prelude.pure newValue, ..}
instance Property "Name" AttributeGroup where
  type PropertyType "Name" AttributeGroup = Value Prelude.Text
  set newValue AttributeGroup {..}
    = AttributeGroup {name = newValue, ..}
instance Property "Tags" AttributeGroup where
  type PropertyType "Tags" AttributeGroup = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue AttributeGroup {..}
    = AttributeGroup {tags = Prelude.pure newValue, ..}