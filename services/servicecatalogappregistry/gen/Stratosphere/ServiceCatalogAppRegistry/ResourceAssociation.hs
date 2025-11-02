module Stratosphere.ServiceCatalogAppRegistry.ResourceAssociation (
        ResourceAssociation(..), mkResourceAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResourceAssociation
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalogappregistry-resourceassociation.html>
    ResourceAssociation {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalogappregistry-resourceassociation.html#cfn-servicecatalogappregistry-resourceassociation-application>
                         application :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalogappregistry-resourceassociation.html#cfn-servicecatalogappregistry-resourceassociation-resource>
                         resource :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalogappregistry-resourceassociation.html#cfn-servicecatalogappregistry-resourceassociation-resourcetype>
                         resourceType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResourceAssociation ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> ResourceAssociation
mkResourceAssociation application resource resourceType
  = ResourceAssociation
      {haddock_workaround_ = (), application = application,
       resource = resource, resourceType = resourceType}
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