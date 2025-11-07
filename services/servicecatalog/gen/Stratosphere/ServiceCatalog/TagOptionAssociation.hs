module Stratosphere.ServiceCatalog.TagOptionAssociation (
        TagOptionAssociation(..), mkTagOptionAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TagOptionAssociation
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-tagoptionassociation.html>
    TagOptionAssociation {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-tagoptionassociation.html#cfn-servicecatalog-tagoptionassociation-resourceid>
                          resourceId :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-tagoptionassociation.html#cfn-servicecatalog-tagoptionassociation-tagoptionid>
                          tagOptionId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTagOptionAssociation :: TagOptionAssociation
mkTagOptionAssociation
  = TagOptionAssociation
      {haddock_workaround_ = (), resourceId = Prelude.Nothing,
       tagOptionId = Prelude.Nothing}
instance ToResourceProperties TagOptionAssociation where
  toResourceProperties TagOptionAssociation {..}
    = ResourceProperties
        {awsType = "AWS::ServiceCatalog::TagOptionAssociation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ResourceId" Prelude.<$> resourceId,
                            (JSON..=) "TagOptionId" Prelude.<$> tagOptionId])}
instance JSON.ToJSON TagOptionAssociation where
  toJSON TagOptionAssociation {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ResourceId" Prelude.<$> resourceId,
               (JSON..=) "TagOptionId" Prelude.<$> tagOptionId]))
instance Property "ResourceId" TagOptionAssociation where
  type PropertyType "ResourceId" TagOptionAssociation = Value Prelude.Text
  set newValue TagOptionAssociation {..}
    = TagOptionAssociation {resourceId = Prelude.pure newValue, ..}
instance Property "TagOptionId" TagOptionAssociation where
  type PropertyType "TagOptionId" TagOptionAssociation = Value Prelude.Text
  set newValue TagOptionAssociation {..}
    = TagOptionAssociation {tagOptionId = Prelude.pure newValue, ..}