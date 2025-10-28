module Stratosphere.EC2.CapacityReservation.TagSpecificationProperty (
        TagSpecificationProperty(..), mkTagSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data TagSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-capacityreservation-tagspecification.html>
    TagSpecificationProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-capacityreservation-tagspecification.html#cfn-ec2-capacityreservation-tagspecification-resourcetype>
                              resourceType :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-capacityreservation-tagspecification.html#cfn-ec2-capacityreservation-tagspecification-tags>
                              tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTagSpecificationProperty :: TagSpecificationProperty
mkTagSpecificationProperty
  = TagSpecificationProperty
      {haddock_workaround_ = (), resourceType = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties TagSpecificationProperty where
  toResourceProperties TagSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::CapacityReservation.TagSpecification",
         supportsTags = Prelude.True,
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