module Stratosphere.EC2.SpotFleet.SpotFleetTagSpecificationProperty (
        SpotFleetTagSpecificationProperty(..),
        mkSpotFleetTagSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data SpotFleetTagSpecificationProperty
  = SpotFleetTagSpecificationProperty {resourceType :: (Prelude.Maybe (Value Prelude.Text)),
                                       tags :: (Prelude.Maybe [Tag])}
mkSpotFleetTagSpecificationProperty ::
  SpotFleetTagSpecificationProperty
mkSpotFleetTagSpecificationProperty
  = SpotFleetTagSpecificationProperty
      {resourceType = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties SpotFleetTagSpecificationProperty where
  toResourceProperties SpotFleetTagSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::SpotFleet.SpotFleetTagSpecification",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ResourceType" Prelude.<$> resourceType,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON SpotFleetTagSpecificationProperty where
  toJSON SpotFleetTagSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ResourceType" Prelude.<$> resourceType,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "ResourceType" SpotFleetTagSpecificationProperty where
  type PropertyType "ResourceType" SpotFleetTagSpecificationProperty = Value Prelude.Text
  set newValue SpotFleetTagSpecificationProperty {..}
    = SpotFleetTagSpecificationProperty
        {resourceType = Prelude.pure newValue, ..}
instance Property "Tags" SpotFleetTagSpecificationProperty where
  type PropertyType "Tags" SpotFleetTagSpecificationProperty = [Tag]
  set newValue SpotFleetTagSpecificationProperty {..}
    = SpotFleetTagSpecificationProperty
        {tags = Prelude.pure newValue, ..}