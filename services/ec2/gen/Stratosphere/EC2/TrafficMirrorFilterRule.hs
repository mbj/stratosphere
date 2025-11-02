module Stratosphere.EC2.TrafficMirrorFilterRule (
        module Exports, TrafficMirrorFilterRule(..),
        mkTrafficMirrorFilterRule
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.TrafficMirrorFilterRule.TrafficMirrorPortRangeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data TrafficMirrorFilterRule
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorfilterrule.html>
    TrafficMirrorFilterRule {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorfilterrule.html#cfn-ec2-trafficmirrorfilterrule-description>
                             description :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorfilterrule.html#cfn-ec2-trafficmirrorfilterrule-destinationcidrblock>
                             destinationCidrBlock :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorfilterrule.html#cfn-ec2-trafficmirrorfilterrule-destinationportrange>
                             destinationPortRange :: (Prelude.Maybe TrafficMirrorPortRangeProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorfilterrule.html#cfn-ec2-trafficmirrorfilterrule-protocol>
                             protocol :: (Prelude.Maybe (Value Prelude.Integer)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorfilterrule.html#cfn-ec2-trafficmirrorfilterrule-ruleaction>
                             ruleAction :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorfilterrule.html#cfn-ec2-trafficmirrorfilterrule-rulenumber>
                             ruleNumber :: (Value Prelude.Integer),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorfilterrule.html#cfn-ec2-trafficmirrorfilterrule-sourcecidrblock>
                             sourceCidrBlock :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorfilterrule.html#cfn-ec2-trafficmirrorfilterrule-sourceportrange>
                             sourcePortRange :: (Prelude.Maybe TrafficMirrorPortRangeProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorfilterrule.html#cfn-ec2-trafficmirrorfilterrule-tags>
                             tags :: (Prelude.Maybe [Tag]),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorfilterrule.html#cfn-ec2-trafficmirrorfilterrule-trafficdirection>
                             trafficDirection :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorfilterrule.html#cfn-ec2-trafficmirrorfilterrule-trafficmirrorfilterid>
                             trafficMirrorFilterId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTrafficMirrorFilterRule ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Integer
        -> Value Prelude.Text
           -> Value Prelude.Text
              -> Value Prelude.Text -> TrafficMirrorFilterRule
mkTrafficMirrorFilterRule
  destinationCidrBlock
  ruleAction
  ruleNumber
  sourceCidrBlock
  trafficDirection
  trafficMirrorFilterId
  = TrafficMirrorFilterRule
      {haddock_workaround_ = (),
       destinationCidrBlock = destinationCidrBlock,
       ruleAction = ruleAction, ruleNumber = ruleNumber,
       sourceCidrBlock = sourceCidrBlock,
       trafficDirection = trafficDirection,
       trafficMirrorFilterId = trafficMirrorFilterId,
       description = Prelude.Nothing,
       destinationPortRange = Prelude.Nothing, protocol = Prelude.Nothing,
       sourcePortRange = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties TrafficMirrorFilterRule where
  toResourceProperties TrafficMirrorFilterRule {..}
    = ResourceProperties
        {awsType = "AWS::EC2::TrafficMirrorFilterRule",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DestinationCidrBlock" JSON..= destinationCidrBlock,
                            "RuleAction" JSON..= ruleAction, "RuleNumber" JSON..= ruleNumber,
                            "SourceCidrBlock" JSON..= sourceCidrBlock,
                            "TrafficDirection" JSON..= trafficDirection,
                            "TrafficMirrorFilterId" JSON..= trafficMirrorFilterId]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "DestinationPortRange" Prelude.<$> destinationPortRange,
                               (JSON..=) "Protocol" Prelude.<$> protocol,
                               (JSON..=) "SourcePortRange" Prelude.<$> sourcePortRange,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON TrafficMirrorFilterRule where
  toJSON TrafficMirrorFilterRule {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DestinationCidrBlock" JSON..= destinationCidrBlock,
               "RuleAction" JSON..= ruleAction, "RuleNumber" JSON..= ruleNumber,
               "SourceCidrBlock" JSON..= sourceCidrBlock,
               "TrafficDirection" JSON..= trafficDirection,
               "TrafficMirrorFilterId" JSON..= trafficMirrorFilterId]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "DestinationPortRange" Prelude.<$> destinationPortRange,
                  (JSON..=) "Protocol" Prelude.<$> protocol,
                  (JSON..=) "SourcePortRange" Prelude.<$> sourcePortRange,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" TrafficMirrorFilterRule where
  type PropertyType "Description" TrafficMirrorFilterRule = Value Prelude.Text
  set newValue TrafficMirrorFilterRule {..}
    = TrafficMirrorFilterRule {description = Prelude.pure newValue, ..}
instance Property "DestinationCidrBlock" TrafficMirrorFilterRule where
  type PropertyType "DestinationCidrBlock" TrafficMirrorFilterRule = Value Prelude.Text
  set newValue TrafficMirrorFilterRule {..}
    = TrafficMirrorFilterRule {destinationCidrBlock = newValue, ..}
instance Property "DestinationPortRange" TrafficMirrorFilterRule where
  type PropertyType "DestinationPortRange" TrafficMirrorFilterRule = TrafficMirrorPortRangeProperty
  set newValue TrafficMirrorFilterRule {..}
    = TrafficMirrorFilterRule
        {destinationPortRange = Prelude.pure newValue, ..}
instance Property "Protocol" TrafficMirrorFilterRule where
  type PropertyType "Protocol" TrafficMirrorFilterRule = Value Prelude.Integer
  set newValue TrafficMirrorFilterRule {..}
    = TrafficMirrorFilterRule {protocol = Prelude.pure newValue, ..}
instance Property "RuleAction" TrafficMirrorFilterRule where
  type PropertyType "RuleAction" TrafficMirrorFilterRule = Value Prelude.Text
  set newValue TrafficMirrorFilterRule {..}
    = TrafficMirrorFilterRule {ruleAction = newValue, ..}
instance Property "RuleNumber" TrafficMirrorFilterRule where
  type PropertyType "RuleNumber" TrafficMirrorFilterRule = Value Prelude.Integer
  set newValue TrafficMirrorFilterRule {..}
    = TrafficMirrorFilterRule {ruleNumber = newValue, ..}
instance Property "SourceCidrBlock" TrafficMirrorFilterRule where
  type PropertyType "SourceCidrBlock" TrafficMirrorFilterRule = Value Prelude.Text
  set newValue TrafficMirrorFilterRule {..}
    = TrafficMirrorFilterRule {sourceCidrBlock = newValue, ..}
instance Property "SourcePortRange" TrafficMirrorFilterRule where
  type PropertyType "SourcePortRange" TrafficMirrorFilterRule = TrafficMirrorPortRangeProperty
  set newValue TrafficMirrorFilterRule {..}
    = TrafficMirrorFilterRule
        {sourcePortRange = Prelude.pure newValue, ..}
instance Property "Tags" TrafficMirrorFilterRule where
  type PropertyType "Tags" TrafficMirrorFilterRule = [Tag]
  set newValue TrafficMirrorFilterRule {..}
    = TrafficMirrorFilterRule {tags = Prelude.pure newValue, ..}
instance Property "TrafficDirection" TrafficMirrorFilterRule where
  type PropertyType "TrafficDirection" TrafficMirrorFilterRule = Value Prelude.Text
  set newValue TrafficMirrorFilterRule {..}
    = TrafficMirrorFilterRule {trafficDirection = newValue, ..}
instance Property "TrafficMirrorFilterId" TrafficMirrorFilterRule where
  type PropertyType "TrafficMirrorFilterId" TrafficMirrorFilterRule = Value Prelude.Text
  set newValue TrafficMirrorFilterRule {..}
    = TrafficMirrorFilterRule {trafficMirrorFilterId = newValue, ..}