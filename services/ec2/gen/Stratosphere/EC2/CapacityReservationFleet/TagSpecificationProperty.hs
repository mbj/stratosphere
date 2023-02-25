module Stratosphere.EC2.CapacityReservationFleet.TagSpecificationProperty (
        TagSpecificationProperty(..), mkTagSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data TagSpecificationProperty
  = TagSpecificationProperty {resourceType :: (Prelude.Maybe (Value Prelude.Text)),
                              tags :: (Prelude.Maybe [Tag])}
mkTagSpecificationProperty :: TagSpecificationProperty
mkTagSpecificationProperty
  = TagSpecificationProperty
      {resourceType = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties TagSpecificationProperty where
  toResourceProperties TagSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::CapacityReservationFleet.TagSpecification",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ResourceType" Prelude.<$> resourceType,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON TagSpecificationProperty where
  toJSON TagSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ResourceType" Prelude.<$> resourceType,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "ResourceType" TagSpecificationProperty where
  type PropertyType "ResourceType" TagSpecificationProperty = Value Prelude.Text
  set newValue TagSpecificationProperty {..}
    = TagSpecificationProperty
        {resourceType = Prelude.pure newValue, ..}
instance Property "Tags" TagSpecificationProperty where
  type PropertyType "Tags" TagSpecificationProperty = [Tag]
  set newValue TagSpecificationProperty {..}
    = TagSpecificationProperty {tags = Prelude.pure newValue, ..}