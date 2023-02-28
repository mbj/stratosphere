module Stratosphere.ServiceCatalogAppRegistry.AttributeGroupAssociation (
        AttributeGroupAssociation(..), mkAttributeGroupAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AttributeGroupAssociation
  = AttributeGroupAssociation {application :: (Value Prelude.Text),
                               attributeGroup :: (Value Prelude.Text)}
mkAttributeGroupAssociation ::
  Value Prelude.Text
  -> Value Prelude.Text -> AttributeGroupAssociation
mkAttributeGroupAssociation application attributeGroup
  = AttributeGroupAssociation
      {application = application, attributeGroup = attributeGroup}
instance ToResourceProperties AttributeGroupAssociation where
  toResourceProperties AttributeGroupAssociation {..}
    = ResourceProperties
        {awsType = "AWS::ServiceCatalogAppRegistry::AttributeGroupAssociation",
         supportsTags = Prelude.False,
         properties = ["Application" JSON..= application,
                       "AttributeGroup" JSON..= attributeGroup]}
instance JSON.ToJSON AttributeGroupAssociation where
  toJSON AttributeGroupAssociation {..}
    = JSON.object
        ["Application" JSON..= application,
         "AttributeGroup" JSON..= attributeGroup]
instance Property "Application" AttributeGroupAssociation where
  type PropertyType "Application" AttributeGroupAssociation = Value Prelude.Text
  set newValue AttributeGroupAssociation {..}
    = AttributeGroupAssociation {application = newValue, ..}
instance Property "AttributeGroup" AttributeGroupAssociation where
  type PropertyType "AttributeGroup" AttributeGroupAssociation = Value Prelude.Text
  set newValue AttributeGroupAssociation {..}
    = AttributeGroupAssociation {attributeGroup = newValue, ..}