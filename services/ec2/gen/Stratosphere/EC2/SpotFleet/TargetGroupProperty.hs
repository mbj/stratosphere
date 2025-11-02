module Stratosphere.EC2.SpotFleet.TargetGroupProperty (
        TargetGroupProperty(..), mkTargetGroupProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TargetGroupProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-targetgroup.html>
    TargetGroupProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-targetgroup.html#cfn-ec2-spotfleet-targetgroup-arn>
                         arn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTargetGroupProperty :: Value Prelude.Text -> TargetGroupProperty
mkTargetGroupProperty arn
  = TargetGroupProperty {haddock_workaround_ = (), arn = arn}
instance ToResourceProperties TargetGroupProperty where
  toResourceProperties TargetGroupProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::SpotFleet.TargetGroup",
         supportsTags = Prelude.False, properties = ["Arn" JSON..= arn]}
instance JSON.ToJSON TargetGroupProperty where
  toJSON TargetGroupProperty {..} = JSON.object ["Arn" JSON..= arn]
instance Property "Arn" TargetGroupProperty where
  type PropertyType "Arn" TargetGroupProperty = Value Prelude.Text
  set newValue TargetGroupProperty {..}
    = TargetGroupProperty {arn = newValue, ..}