module Stratosphere.EC2.SpotFleet.IamInstanceProfileSpecificationProperty (
        IamInstanceProfileSpecificationProperty(..),
        mkIamInstanceProfileSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IamInstanceProfileSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-iaminstanceprofilespecification.html>
    IamInstanceProfileSpecificationProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-iaminstanceprofilespecification.html#cfn-ec2-spotfleet-iaminstanceprofilespecification-arn>
                                             arn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIamInstanceProfileSpecificationProperty ::
  IamInstanceProfileSpecificationProperty
mkIamInstanceProfileSpecificationProperty
  = IamInstanceProfileSpecificationProperty
      {haddock_workaround_ = (), arn = Prelude.Nothing}
instance ToResourceProperties IamInstanceProfileSpecificationProperty where
  toResourceProperties IamInstanceProfileSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::SpotFleet.IamInstanceProfileSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Arn" Prelude.<$> arn])}
instance JSON.ToJSON IamInstanceProfileSpecificationProperty where
  toJSON IamInstanceProfileSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Arn" Prelude.<$> arn]))
instance Property "Arn" IamInstanceProfileSpecificationProperty where
  type PropertyType "Arn" IamInstanceProfileSpecificationProperty = Value Prelude.Text
  set newValue IamInstanceProfileSpecificationProperty {..}
    = IamInstanceProfileSpecificationProperty
        {arn = Prelude.pure newValue, ..}