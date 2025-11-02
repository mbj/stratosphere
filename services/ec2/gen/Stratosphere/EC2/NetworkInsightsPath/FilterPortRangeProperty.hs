module Stratosphere.EC2.NetworkInsightsPath.FilterPortRangeProperty (
        FilterPortRangeProperty(..), mkFilterPortRangeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FilterPortRangeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightspath-filterportrange.html>
    FilterPortRangeProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightspath-filterportrange.html#cfn-ec2-networkinsightspath-filterportrange-fromport>
                             fromPort :: (Prelude.Maybe (Value Prelude.Integer)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightspath-filterportrange.html#cfn-ec2-networkinsightspath-filterportrange-toport>
                             toPort :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFilterPortRangeProperty :: FilterPortRangeProperty
mkFilterPortRangeProperty
  = FilterPortRangeProperty
      {haddock_workaround_ = (), fromPort = Prelude.Nothing,
       toPort = Prelude.Nothing}
instance ToResourceProperties FilterPortRangeProperty where
  toResourceProperties FilterPortRangeProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::NetworkInsightsPath.FilterPortRange",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FromPort" Prelude.<$> fromPort,
                            (JSON..=) "ToPort" Prelude.<$> toPort])}
instance JSON.ToJSON FilterPortRangeProperty where
  toJSON FilterPortRangeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FromPort" Prelude.<$> fromPort,
               (JSON..=) "ToPort" Prelude.<$> toPort]))
instance Property "FromPort" FilterPortRangeProperty where
  type PropertyType "FromPort" FilterPortRangeProperty = Value Prelude.Integer
  set newValue FilterPortRangeProperty {..}
    = FilterPortRangeProperty {fromPort = Prelude.pure newValue, ..}
instance Property "ToPort" FilterPortRangeProperty where
  type PropertyType "ToPort" FilterPortRangeProperty = Value Prelude.Integer
  set newValue FilterPortRangeProperty {..}
    = FilterPortRangeProperty {toPort = Prelude.pure newValue, ..}