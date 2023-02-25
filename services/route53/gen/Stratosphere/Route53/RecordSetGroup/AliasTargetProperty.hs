module Stratosphere.Route53.RecordSetGroup.AliasTargetProperty (
        AliasTargetProperty(..), mkAliasTargetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AliasTargetProperty
  = AliasTargetProperty {dNSName :: (Value Prelude.Text),
                         evaluateTargetHealth :: (Prelude.Maybe (Value Prelude.Bool)),
                         hostedZoneId :: (Value Prelude.Text)}
mkAliasTargetProperty ::
  Value Prelude.Text -> Value Prelude.Text -> AliasTargetProperty
mkAliasTargetProperty dNSName hostedZoneId
  = AliasTargetProperty
      {dNSName = dNSName, hostedZoneId = hostedZoneId,
       evaluateTargetHealth = Prelude.Nothing}
instance ToResourceProperties AliasTargetProperty where
  toResourceProperties AliasTargetProperty {..}
    = ResourceProperties
        {awsType = "AWS::Route53::RecordSetGroup.AliasTarget",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DNSName" JSON..= dNSName, "HostedZoneId" JSON..= hostedZoneId]
                           (Prelude.catMaybes
                              [(JSON..=) "EvaluateTargetHealth"
                                 Prelude.<$> evaluateTargetHealth]))}
instance JSON.ToJSON AliasTargetProperty where
  toJSON AliasTargetProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DNSName" JSON..= dNSName, "HostedZoneId" JSON..= hostedZoneId]
              (Prelude.catMaybes
                 [(JSON..=) "EvaluateTargetHealth"
                    Prelude.<$> evaluateTargetHealth])))
instance Property "DNSName" AliasTargetProperty where
  type PropertyType "DNSName" AliasTargetProperty = Value Prelude.Text
  set newValue AliasTargetProperty {..}
    = AliasTargetProperty {dNSName = newValue, ..}
instance Property "EvaluateTargetHealth" AliasTargetProperty where
  type PropertyType "EvaluateTargetHealth" AliasTargetProperty = Value Prelude.Bool
  set newValue AliasTargetProperty {..}
    = AliasTargetProperty
        {evaluateTargetHealth = Prelude.pure newValue, ..}
instance Property "HostedZoneId" AliasTargetProperty where
  type PropertyType "HostedZoneId" AliasTargetProperty = Value Prelude.Text
  set newValue AliasTargetProperty {..}
    = AliasTargetProperty {hostedZoneId = newValue, ..}