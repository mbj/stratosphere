module Stratosphere.XRay.SamplingRule.SamplingRuleUpdateProperty (
        SamplingRuleUpdateProperty(..), mkSamplingRuleUpdateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SamplingRuleUpdateProperty
  = SamplingRuleUpdateProperty {attributes :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
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
                                uRLPath :: (Prelude.Maybe (Value Prelude.Text))}
mkSamplingRuleUpdateProperty :: SamplingRuleUpdateProperty
mkSamplingRuleUpdateProperty
  = SamplingRuleUpdateProperty
      {attributes = Prelude.Nothing, fixedRate = Prelude.Nothing,
       hTTPMethod = Prelude.Nothing, host = Prelude.Nothing,
       priority = Prelude.Nothing, reservoirSize = Prelude.Nothing,
       resourceARN = Prelude.Nothing, ruleARN = Prelude.Nothing,
       ruleName = Prelude.Nothing, serviceName = Prelude.Nothing,
       serviceType = Prelude.Nothing, uRLPath = Prelude.Nothing}
instance ToResourceProperties SamplingRuleUpdateProperty where
  toResourceProperties SamplingRuleUpdateProperty {..}
    = ResourceProperties
        {awsType = "AWS::XRay::SamplingRule.SamplingRuleUpdate",
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
                            (JSON..=) "URLPath" Prelude.<$> uRLPath])}
instance JSON.ToJSON SamplingRuleUpdateProperty where
  toJSON SamplingRuleUpdateProperty {..}
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
               (JSON..=) "URLPath" Prelude.<$> uRLPath]))
instance Property "Attributes" SamplingRuleUpdateProperty where
  type PropertyType "Attributes" SamplingRuleUpdateProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue SamplingRuleUpdateProperty {..}
    = SamplingRuleUpdateProperty
        {attributes = Prelude.pure newValue, ..}
instance Property "FixedRate" SamplingRuleUpdateProperty where
  type PropertyType "FixedRate" SamplingRuleUpdateProperty = Value Prelude.Double
  set newValue SamplingRuleUpdateProperty {..}
    = SamplingRuleUpdateProperty
        {fixedRate = Prelude.pure newValue, ..}
instance Property "HTTPMethod" SamplingRuleUpdateProperty where
  type PropertyType "HTTPMethod" SamplingRuleUpdateProperty = Value Prelude.Text
  set newValue SamplingRuleUpdateProperty {..}
    = SamplingRuleUpdateProperty
        {hTTPMethod = Prelude.pure newValue, ..}
instance Property "Host" SamplingRuleUpdateProperty where
  type PropertyType "Host" SamplingRuleUpdateProperty = Value Prelude.Text
  set newValue SamplingRuleUpdateProperty {..}
    = SamplingRuleUpdateProperty {host = Prelude.pure newValue, ..}
instance Property "Priority" SamplingRuleUpdateProperty where
  type PropertyType "Priority" SamplingRuleUpdateProperty = Value Prelude.Integer
  set newValue SamplingRuleUpdateProperty {..}
    = SamplingRuleUpdateProperty {priority = Prelude.pure newValue, ..}
instance Property "ReservoirSize" SamplingRuleUpdateProperty where
  type PropertyType "ReservoirSize" SamplingRuleUpdateProperty = Value Prelude.Integer
  set newValue SamplingRuleUpdateProperty {..}
    = SamplingRuleUpdateProperty
        {reservoirSize = Prelude.pure newValue, ..}
instance Property "ResourceARN" SamplingRuleUpdateProperty where
  type PropertyType "ResourceARN" SamplingRuleUpdateProperty = Value Prelude.Text
  set newValue SamplingRuleUpdateProperty {..}
    = SamplingRuleUpdateProperty
        {resourceARN = Prelude.pure newValue, ..}
instance Property "RuleARN" SamplingRuleUpdateProperty where
  type PropertyType "RuleARN" SamplingRuleUpdateProperty = Value Prelude.Text
  set newValue SamplingRuleUpdateProperty {..}
    = SamplingRuleUpdateProperty {ruleARN = Prelude.pure newValue, ..}
instance Property "RuleName" SamplingRuleUpdateProperty where
  type PropertyType "RuleName" SamplingRuleUpdateProperty = Value Prelude.Text
  set newValue SamplingRuleUpdateProperty {..}
    = SamplingRuleUpdateProperty {ruleName = Prelude.pure newValue, ..}
instance Property "ServiceName" SamplingRuleUpdateProperty where
  type PropertyType "ServiceName" SamplingRuleUpdateProperty = Value Prelude.Text
  set newValue SamplingRuleUpdateProperty {..}
    = SamplingRuleUpdateProperty
        {serviceName = Prelude.pure newValue, ..}
instance Property "ServiceType" SamplingRuleUpdateProperty where
  type PropertyType "ServiceType" SamplingRuleUpdateProperty = Value Prelude.Text
  set newValue SamplingRuleUpdateProperty {..}
    = SamplingRuleUpdateProperty
        {serviceType = Prelude.pure newValue, ..}
instance Property "URLPath" SamplingRuleUpdateProperty where
  type PropertyType "URLPath" SamplingRuleUpdateProperty = Value Prelude.Text
  set newValue SamplingRuleUpdateProperty {..}
    = SamplingRuleUpdateProperty {uRLPath = Prelude.pure newValue, ..}