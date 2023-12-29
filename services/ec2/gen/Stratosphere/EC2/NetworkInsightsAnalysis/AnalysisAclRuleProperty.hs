module Stratosphere.EC2.NetworkInsightsAnalysis.AnalysisAclRuleProperty (
        module Exports, AnalysisAclRuleProperty(..),
        mkAnalysisAclRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.NetworkInsightsAnalysis.PortRangeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AnalysisAclRuleProperty
  = AnalysisAclRuleProperty {cidr :: (Prelude.Maybe (Value Prelude.Text)),
                             egress :: (Prelude.Maybe (Value Prelude.Bool)),
                             portRange :: (Prelude.Maybe PortRangeProperty),
                             protocol :: (Prelude.Maybe (Value Prelude.Text)),
                             ruleAction :: (Prelude.Maybe (Value Prelude.Text)),
                             ruleNumber :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAnalysisAclRuleProperty :: AnalysisAclRuleProperty
mkAnalysisAclRuleProperty
  = AnalysisAclRuleProperty
      {cidr = Prelude.Nothing, egress = Prelude.Nothing,
       portRange = Prelude.Nothing, protocol = Prelude.Nothing,
       ruleAction = Prelude.Nothing, ruleNumber = Prelude.Nothing}
instance ToResourceProperties AnalysisAclRuleProperty where
  toResourceProperties AnalysisAclRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::NetworkInsightsAnalysis.AnalysisAclRule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Cidr" Prelude.<$> cidr,
                            (JSON..=) "Egress" Prelude.<$> egress,
                            (JSON..=) "PortRange" Prelude.<$> portRange,
                            (JSON..=) "Protocol" Prelude.<$> protocol,
                            (JSON..=) "RuleAction" Prelude.<$> ruleAction,
                            (JSON..=) "RuleNumber" Prelude.<$> ruleNumber])}
instance JSON.ToJSON AnalysisAclRuleProperty where
  toJSON AnalysisAclRuleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Cidr" Prelude.<$> cidr,
               (JSON..=) "Egress" Prelude.<$> egress,
               (JSON..=) "PortRange" Prelude.<$> portRange,
               (JSON..=) "Protocol" Prelude.<$> protocol,
               (JSON..=) "RuleAction" Prelude.<$> ruleAction,
               (JSON..=) "RuleNumber" Prelude.<$> ruleNumber]))
instance Property "Cidr" AnalysisAclRuleProperty where
  type PropertyType "Cidr" AnalysisAclRuleProperty = Value Prelude.Text
  set newValue AnalysisAclRuleProperty {..}
    = AnalysisAclRuleProperty {cidr = Prelude.pure newValue, ..}
instance Property "Egress" AnalysisAclRuleProperty where
  type PropertyType "Egress" AnalysisAclRuleProperty = Value Prelude.Bool
  set newValue AnalysisAclRuleProperty {..}
    = AnalysisAclRuleProperty {egress = Prelude.pure newValue, ..}
instance Property "PortRange" AnalysisAclRuleProperty where
  type PropertyType "PortRange" AnalysisAclRuleProperty = PortRangeProperty
  set newValue AnalysisAclRuleProperty {..}
    = AnalysisAclRuleProperty {portRange = Prelude.pure newValue, ..}
instance Property "Protocol" AnalysisAclRuleProperty where
  type PropertyType "Protocol" AnalysisAclRuleProperty = Value Prelude.Text
  set newValue AnalysisAclRuleProperty {..}
    = AnalysisAclRuleProperty {protocol = Prelude.pure newValue, ..}
instance Property "RuleAction" AnalysisAclRuleProperty where
  type PropertyType "RuleAction" AnalysisAclRuleProperty = Value Prelude.Text
  set newValue AnalysisAclRuleProperty {..}
    = AnalysisAclRuleProperty {ruleAction = Prelude.pure newValue, ..}
instance Property "RuleNumber" AnalysisAclRuleProperty where
  type PropertyType "RuleNumber" AnalysisAclRuleProperty = Value Prelude.Integer
  set newValue AnalysisAclRuleProperty {..}
    = AnalysisAclRuleProperty {ruleNumber = Prelude.pure newValue, ..}