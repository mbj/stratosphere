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
                          fixedRate :: (Value Prelude.Double),
                          hTTPMethod :: (Value Prelude.Text),
                          host :: (Value Prelude.Text),
                          priority :: (Value Prelude.Integer),
                          reservoirSize :: (Value Prelude.Integer),
                          resourceARN :: (Value Prelude.Text),
                          ruleARN :: (Prelude.Maybe (Value Prelude.Text)),
                          ruleName :: (Prelude.Maybe (Value Prelude.Text)),
                          serviceName :: (Value Prelude.Text),
                          serviceType :: (Value Prelude.Text),
                          uRLPath :: (Value Prelude.Text),
                          version :: (Prelude.Maybe (Value Prelude.Integer))}
mkSamplingRuleProperty ::
  Value Prelude.Double
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Integer
           -> Value Prelude.Integer
              -> Value Prelude.Text
                 -> Value Prelude.Text
                    -> Value Prelude.Text -> Value Prelude.Text -> SamplingRuleProperty
mkSamplingRuleProperty
  fixedRate
  hTTPMethod
  host
  priority
  reservoirSize
  resourceARN
  serviceName
  serviceType
  uRLPath
  = SamplingRuleProperty
      {fixedRate = fixedRate, hTTPMethod = hTTPMethod, host = host,
       priority = priority, reservoirSize = reservoirSize,
       resourceARN = resourceARN, serviceName = serviceName,
       serviceType = serviceType, uRLPath = uRLPath,
       attributes = Prelude.Nothing, ruleARN = Prelude.Nothing,
       ruleName = Prelude.Nothing, version = Prelude.Nothing}
instance ToResourceProperties SamplingRuleProperty where
  toResourceProperties SamplingRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::XRay::SamplingRule.SamplingRule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FixedRate" JSON..= fixedRate, "HTTPMethod" JSON..= hTTPMethod,
                            "Host" JSON..= host, "Priority" JSON..= priority,
                            "ReservoirSize" JSON..= reservoirSize,
                            "ResourceARN" JSON..= resourceARN,
                            "ServiceName" JSON..= serviceName,
                            "ServiceType" JSON..= serviceType, "URLPath" JSON..= uRLPath]
                           (Prelude.catMaybes
                              [(JSON..=) "Attributes" Prelude.<$> attributes,
                               (JSON..=) "RuleARN" Prelude.<$> ruleARN,
                               (JSON..=) "RuleName" Prelude.<$> ruleName,
                               (JSON..=) "Version" Prelude.<$> version]))}
instance JSON.ToJSON SamplingRuleProperty where
  toJSON SamplingRuleProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FixedRate" JSON..= fixedRate, "HTTPMethod" JSON..= hTTPMethod,
               "Host" JSON..= host, "Priority" JSON..= priority,
               "ReservoirSize" JSON..= reservoirSize,
               "ResourceARN" JSON..= resourceARN,
               "ServiceName" JSON..= serviceName,
               "ServiceType" JSON..= serviceType, "URLPath" JSON..= uRLPath]
              (Prelude.catMaybes
                 [(JSON..=) "Attributes" Prelude.<$> attributes,
                  (JSON..=) "RuleARN" Prelude.<$> ruleARN,
                  (JSON..=) "RuleName" Prelude.<$> ruleName,
                  (JSON..=) "Version" Prelude.<$> version])))
instance Property "Attributes" SamplingRuleProperty where
  type PropertyType "Attributes" SamplingRuleProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue SamplingRuleProperty {..}
    = SamplingRuleProperty {attributes = Prelude.pure newValue, ..}
instance Property "FixedRate" SamplingRuleProperty where
  type PropertyType "FixedRate" SamplingRuleProperty = Value Prelude.Double
  set newValue SamplingRuleProperty {..}
    = SamplingRuleProperty {fixedRate = newValue, ..}
instance Property "HTTPMethod" SamplingRuleProperty where
  type PropertyType "HTTPMethod" SamplingRuleProperty = Value Prelude.Text
  set newValue SamplingRuleProperty {..}
    = SamplingRuleProperty {hTTPMethod = newValue, ..}
instance Property "Host" SamplingRuleProperty where
  type PropertyType "Host" SamplingRuleProperty = Value Prelude.Text
  set newValue SamplingRuleProperty {..}
    = SamplingRuleProperty {host = newValue, ..}
instance Property "Priority" SamplingRuleProperty where
  type PropertyType "Priority" SamplingRuleProperty = Value Prelude.Integer
  set newValue SamplingRuleProperty {..}
    = SamplingRuleProperty {priority = newValue, ..}
instance Property "ReservoirSize" SamplingRuleProperty where
  type PropertyType "ReservoirSize" SamplingRuleProperty = Value Prelude.Integer
  set newValue SamplingRuleProperty {..}
    = SamplingRuleProperty {reservoirSize = newValue, ..}
instance Property "ResourceARN" SamplingRuleProperty where
  type PropertyType "ResourceARN" SamplingRuleProperty = Value Prelude.Text
  set newValue SamplingRuleProperty {..}
    = SamplingRuleProperty {resourceARN = newValue, ..}
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
    = SamplingRuleProperty {serviceName = newValue, ..}
instance Property "ServiceType" SamplingRuleProperty where
  type PropertyType "ServiceType" SamplingRuleProperty = Value Prelude.Text
  set newValue SamplingRuleProperty {..}
    = SamplingRuleProperty {serviceType = newValue, ..}
instance Property "URLPath" SamplingRuleProperty where
  type PropertyType "URLPath" SamplingRuleProperty = Value Prelude.Text
  set newValue SamplingRuleProperty {..}
    = SamplingRuleProperty {uRLPath = newValue, ..}
instance Property "Version" SamplingRuleProperty where
  type PropertyType "Version" SamplingRuleProperty = Value Prelude.Integer
  set newValue SamplingRuleProperty {..}
    = SamplingRuleProperty {version = Prelude.pure newValue, ..}