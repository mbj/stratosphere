module Stratosphere.XRay.SamplingRule.SamplingRuleProperty (
        SamplingRuleProperty(..), mkSamplingRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SamplingRuleProperty
  = SamplingRuleProperty {attributes :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                          fixedRate :: (Prelude.Maybe (Value Prelude.Double)),
                          hTTPMethod :: (Prelude.Maybe (Value Prelude.Text)),
                          host :: (Prelude.Maybe (Value Prelude.Text)),
                          priority :: (Prelude.Maybe (Value Prelude.Integer)),
                          reservoirSize :: (Prelude.Maybe (Value Prelude.Integer)),
                          resourceARN :: (Prelude.Maybe (Value Prelude.Text)),
                          ruleARN :: (Prelude.Maybe (Value Prelude.Text)),
                          ruleName :: (Prelude.Maybe (Value Prelude.Text)),
                          serviceName :: (Prelude.Maybe (Value Prelude.Text)),
                          serviceType :: (Prelude.Maybe (Value Prelude.Text)),
                          uRLPath :: (Prelude.Maybe (Value Prelude.Text)),
                          version :: (Prelude.Maybe (Value Prelude.Integer))}
mkSamplingRuleProperty :: SamplingRuleProperty
mkSamplingRuleProperty
  = SamplingRuleProperty
      {attributes = Prelude.Nothing, fixedRate = Prelude.Nothing,
       hTTPMethod = Prelude.Nothing, host = Prelude.Nothing,
       priority = Prelude.Nothing, reservoirSize = Prelude.Nothing,
       resourceARN = Prelude.Nothing, ruleARN = Prelude.Nothing,
       ruleName = Prelude.Nothing, serviceName = Prelude.Nothing,
       serviceType = Prelude.Nothing, uRLPath = Prelude.Nothing,
       version = Prelude.Nothing}
instance ToResourceProperties SamplingRuleProperty where
  toResourceProperties SamplingRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::XRay::SamplingRule.SamplingRule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Attributes" Prelude.<$> attributes,
                            (JSON..=) "FixedRate" Prelude.<$> fixedRate,
                            (JSON..=) "HTTPMethod" Prelude.<$> hTTPMethod,
                            (JSON..=) "Host" Prelude.<$> host,
                            (JSON..=) "Priority" Prelude.<$> priority,
                            (JSON..=) "ReservoirSize" Prelude.<$> reservoirSize,
                            (JSON..=) "ResourceARN" Prelude.<$> resourceARN,
                            (JSON..=) "RuleARN" Prelude.<$> ruleARN,
                            (JSON..=) "RuleName" Prelude.<$> ruleName,
                            (JSON..=) "ServiceName" Prelude.<$> serviceName,
                            (JSON..=) "ServiceType" Prelude.<$> serviceType,
                            (JSON..=) "URLPath" Prelude.<$> uRLPath,
                            (JSON..=) "Version" Prelude.<$> version])}
instance JSON.ToJSON SamplingRuleProperty where
  toJSON SamplingRuleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Attributes" Prelude.<$> attributes,
               (JSON..=) "FixedRate" Prelude.<$> fixedRate,
               (JSON..=) "HTTPMethod" Prelude.<$> hTTPMethod,
               (JSON..=) "Host" Prelude.<$> host,
               (JSON..=) "Priority" Prelude.<$> priority,
               (JSON..=) "ReservoirSize" Prelude.<$> reservoirSize,
               (JSON..=) "ResourceARN" Prelude.<$> resourceARN,
               (JSON..=) "RuleARN" Prelude.<$> ruleARN,
               (JSON..=) "RuleName" Prelude.<$> ruleName,
               (JSON..=) "ServiceName" Prelude.<$> serviceName,
               (JSON..=) "ServiceType" Prelude.<$> serviceType,
               (JSON..=) "URLPath" Prelude.<$> uRLPath,
               (JSON..=) "Version" Prelude.<$> version]))
instance Property "Attributes" SamplingRuleProperty where
  type PropertyType "Attributes" SamplingRuleProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue SamplingRuleProperty {..}
    = SamplingRuleProperty {attributes = Prelude.pure newValue, ..}
instance Property "FixedRate" SamplingRuleProperty where
  type PropertyType "FixedRate" SamplingRuleProperty = Value Prelude.Double
  set newValue SamplingRuleProperty {..}
    = SamplingRuleProperty {fixedRate = Prelude.pure newValue, ..}
instance Property "HTTPMethod" SamplingRuleProperty where
  type PropertyType "HTTPMethod" SamplingRuleProperty = Value Prelude.Text
  set newValue SamplingRuleProperty {..}
    = SamplingRuleProperty {hTTPMethod = Prelude.pure newValue, ..}
instance Property "Host" SamplingRuleProperty where
  type PropertyType "Host" SamplingRuleProperty = Value Prelude.Text
  set newValue SamplingRuleProperty {..}
    = SamplingRuleProperty {host = Prelude.pure newValue, ..}
instance Property "Priority" SamplingRuleProperty where
  type PropertyType "Priority" SamplingRuleProperty = Value Prelude.Integer
  set newValue SamplingRuleProperty {..}
    = SamplingRuleProperty {priority = Prelude.pure newValue, ..}
instance Property "ReservoirSize" SamplingRuleProperty where
  type PropertyType "ReservoirSize" SamplingRuleProperty = Value Prelude.Integer
  set newValue SamplingRuleProperty {..}
    = SamplingRuleProperty {reservoirSize = Prelude.pure newValue, ..}
instance Property "ResourceARN" SamplingRuleProperty where
  type PropertyType "ResourceARN" SamplingRuleProperty = Value Prelude.Text
  set newValue SamplingRuleProperty {..}
    = SamplingRuleProperty {resourceARN = Prelude.pure newValue, ..}
instance Property "RuleARN" SamplingRuleProperty where
  type PropertyType "RuleARN" SamplingRuleProperty = Value Prelude.Text
  set newValue SamplingRuleProperty {..}
    = SamplingRuleProperty {ruleARN = Prelude.pure newValue, ..}
instance Property "RuleName" SamplingRuleProperty where
  type PropertyType "RuleName" SamplingRuleProperty = Value Prelude.Text
  set newValue SamplingRuleProperty {..}
    = SamplingRuleProperty {ruleName = Prelude.pure newValue, ..}
instance Property "ServiceName" SamplingRuleProperty where
  type PropertyType "ServiceName" SamplingRuleProperty = Value Prelude.Text
  set newValue SamplingRuleProperty {..}
    = SamplingRuleProperty {serviceName = Prelude.pure newValue, ..}
instance Property "ServiceType" SamplingRuleProperty where
  type PropertyType "ServiceType" SamplingRuleProperty = Value Prelude.Text
  set newValue SamplingRuleProperty {..}
    = SamplingRuleProperty {serviceType = Prelude.pure newValue, ..}
instance Property "URLPath" SamplingRuleProperty where
  type PropertyType "URLPath" SamplingRuleProperty = Value Prelude.Text
  set newValue SamplingRuleProperty {..}
    = SamplingRuleProperty {uRLPath = Prelude.pure newValue, ..}
instance Property "Version" SamplingRuleProperty where
  type PropertyType "Version" SamplingRuleProperty = Value Prelude.Integer
  set newValue SamplingRuleProperty {..}
    = SamplingRuleProperty {version = Prelude.pure newValue, ..}