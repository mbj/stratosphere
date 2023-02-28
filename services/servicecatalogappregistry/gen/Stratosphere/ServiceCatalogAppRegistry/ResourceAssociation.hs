module Stratosphere.ServiceCatalogAppRegistry.ResourceAssociation (
        ResourceAssociation(..), mkResourceAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResourceAssociation
  = ResourceAssociation {application :: (Value Prelude.Text),
                         resource :: (Value Prelude.Text),
                         resourceType :: (Value Prelude.Text)}
mkResourceAssociation ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> ResourceAssociation
mkResourceAssociation application resource resourceType
  = ResourceAssociation
      {application = application, resource = resource,
       resourceType = resourceType}
instance ToResourceProperties ResourceAssociation where
  toResourceProperties ResourceAssociation {..}
    = ResourceProperties
        {awsType = "AWS::ServiceCatalogAppRegistry::ResourceAssociation",
         supportsTags = Prelude.False,
         properties = ["Application" JSON..= application,
                       "Resource" JSON..= resource, "ResourceType" JSON..= resourceType]}
instance JSON.ToJSON ResourceAssociation where
  toJSON ResourceAssociation {..}
    = JSON.object
        ["Application" JSON..= application, "Resource" JSON..= resource,
         "ResourceType" JSON..= resourceType]
instance Property "Application" ResourceAssociation where
  type PropertyType "Application" ResourceAssociation = Value Prelude.Text
  set newValue ResourceAssociation {..}
    = ResourceAssociation {application = newValue, ..}
instance Property "Resource" ResourceAssociation where
  type PropertyType "Resource" ResourceAssociation = Value Prelude.Text
  set newValue ResourceAssociation {..}
    = ResourceAssociation {resource = newValue, ..}
instance Property "ResourceType" ResourceAssociation where
  type PropertyType "ResourceType" ResourceAssociation = Value Prelude.Text
  set newValue ResourceAssociation {..}
    = ResourceAssociation {resourceType = newValue, ..}