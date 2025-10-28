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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleettagspecification.html>
    SpotFleetTagSpecificationProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleettagspecification.html#cfn-ec2-spotfleet-spotfleettagspecification-resourcetype>
                                       resourceType :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleettagspecification.html#cfn-ec2-spotfleet-spotfleettagspecification-tags>
                                       tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSpotFleetTagSpecificationProperty ::
  SpotFleetTagSpecificationProperty
mkSpotFleetTagSpecificationProperty
  = SpotFleetTagSpecificationProperty
      {haddock_workaround_ = (), resourceType = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties SpotFleetTagSpecificationProperty where
  toResourceProperties SpotFleetTagSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::SpotFleet.SpotFleetTagSpecification",
         supportsTags = Prelude.True,
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