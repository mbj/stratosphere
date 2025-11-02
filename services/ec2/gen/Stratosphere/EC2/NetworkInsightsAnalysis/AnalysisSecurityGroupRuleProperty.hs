module Stratosphere.EC2.NetworkInsightsAnalysis.AnalysisSecurityGroupRuleProperty (
        module Exports, AnalysisSecurityGroupRuleProperty(..),
        mkAnalysisSecurityGroupRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.NetworkInsightsAnalysis.PortRangeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AnalysisSecurityGroupRuleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-analysissecuritygrouprule.html>
    AnalysisSecurityGroupRuleProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-analysissecuritygrouprule.html#cfn-ec2-networkinsightsanalysis-analysissecuritygrouprule-cidr>
                                       cidr :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-analysissecuritygrouprule.html#cfn-ec2-networkinsightsanalysis-analysissecuritygrouprule-direction>
                                       direction :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-analysissecuritygrouprule.html#cfn-ec2-networkinsightsanalysis-analysissecuritygrouprule-portrange>
                                       portRange :: (Prelude.Maybe PortRangeProperty),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-analysissecuritygrouprule.html#cfn-ec2-networkinsightsanalysis-analysissecuritygrouprule-prefixlistid>
                                       prefixListId :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-analysissecuritygrouprule.html#cfn-ec2-networkinsightsanalysis-analysissecuritygrouprule-protocol>
                                       protocol :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-analysissecuritygrouprule.html#cfn-ec2-networkinsightsanalysis-analysissecuritygrouprule-securitygroupid>
                                       securityGroupId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAnalysisSecurityGroupRuleProperty ::
  AnalysisSecurityGroupRuleProperty
mkAnalysisSecurityGroupRuleProperty
  = AnalysisSecurityGroupRuleProperty
      {haddock_workaround_ = (), cidr = Prelude.Nothing,
       direction = Prelude.Nothing, portRange = Prelude.Nothing,
       prefixListId = Prelude.Nothing, protocol = Prelude.Nothing,
       securityGroupId = Prelude.Nothing}
instance ToResourceProperties AnalysisSecurityGroupRuleProperty where
  toResourceProperties AnalysisSecurityGroupRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::NetworkInsightsAnalysis.AnalysisSecurityGroupRule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Cidr" Prelude.<$> cidr,
                            (JSON..=) "Direction" Prelude.<$> direction,
                            (JSON..=) "PortRange" Prelude.<$> portRange,
                            (JSON..=) "PrefixListId" Prelude.<$> prefixListId,
                            (JSON..=) "Protocol" Prelude.<$> protocol,
                            (JSON..=) "SecurityGroupId" Prelude.<$> securityGroupId])}
instance JSON.ToJSON AnalysisSecurityGroupRuleProperty where
  toJSON AnalysisSecurityGroupRuleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Cidr" Prelude.<$> cidr,
               (JSON..=) "Direction" Prelude.<$> direction,
               (JSON..=) "PortRange" Prelude.<$> portRange,
               (JSON..=) "PrefixListId" Prelude.<$> prefixListId,
               (JSON..=) "Protocol" Prelude.<$> protocol,
               (JSON..=) "SecurityGroupId" Prelude.<$> securityGroupId]))
instance Property "Cidr" AnalysisSecurityGroupRuleProperty where
  type PropertyType "Cidr" AnalysisSecurityGroupRuleProperty = Value Prelude.Text
  set newValue AnalysisSecurityGroupRuleProperty {..}
    = AnalysisSecurityGroupRuleProperty
        {cidr = Prelude.pure newValue, ..}
instance Property "Direction" AnalysisSecurityGroupRuleProperty where
  type PropertyType "Direction" AnalysisSecurityGroupRuleProperty = Value Prelude.Text
  set newValue AnalysisSecurityGroupRuleProperty {..}
    = AnalysisSecurityGroupRuleProperty
        {direction = Prelude.pure newValue, ..}
instance Property "PortRange" AnalysisSecurityGroupRuleProperty where
  type PropertyType "PortRange" AnalysisSecurityGroupRuleProperty = PortRangeProperty
  set newValue AnalysisSecurityGroupRuleProperty {..}
    = AnalysisSecurityGroupRuleProperty
        {portRange = Prelude.pure newValue, ..}
instance Property "PrefixListId" AnalysisSecurityGroupRuleProperty where
  type PropertyType "PrefixListId" AnalysisSecurityGroupRuleProperty = Value Prelude.Text
  set newValue AnalysisSecurityGroupRuleProperty {..}
    = AnalysisSecurityGroupRuleProperty
        {prefixListId = Prelude.pure newValue, ..}
instance Property "Protocol" AnalysisSecurityGroupRuleProperty where
  type PropertyType "Protocol" AnalysisSecurityGroupRuleProperty = Value Prelude.Text
  set newValue AnalysisSecurityGroupRuleProperty {..}
    = AnalysisSecurityGroupRuleProperty
        {protocol = Prelude.pure newValue, ..}
instance Property "SecurityGroupId" AnalysisSecurityGroupRuleProperty where
  type PropertyType "SecurityGroupId" AnalysisSecurityGroupRuleProperty = Value Prelude.Text
  set newValue AnalysisSecurityGroupRuleProperty {..}
    = AnalysisSecurityGroupRuleProperty
        {securityGroupId = Prelude.pure newValue, ..}