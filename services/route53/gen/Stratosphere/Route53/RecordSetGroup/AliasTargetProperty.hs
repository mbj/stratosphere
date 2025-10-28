module Stratosphere.Route53.RecordSetGroup.AliasTargetProperty (
        AliasTargetProperty(..), mkAliasTargetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AliasTargetProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-aliastarget.html>
    AliasTargetProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-aliastarget.html#cfn-route53-aliastarget-dnshostname>
                         dNSName :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-aliastarget.html#cfn-route53-aliastarget-evaluatetargethealth>
                         evaluateTargetHealth :: (Prelude.Maybe (Value Prelude.Bool)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-aliastarget.html#cfn-route53-aliastarget-hostedzoneid>
                         hostedZoneId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAliasTargetProperty ::
  Value Prelude.Text -> Value Prelude.Text -> AliasTargetProperty
mkAliasTargetProperty dNSName hostedZoneId
  = AliasTargetProperty
      {haddock_workaround_ = (), dNSName = dNSName,
       hostedZoneId = hostedZoneId,
       evaluateTargetHealth = Prelude.Nothing}
instance ToResourceProperties AliasTargetProperty where
  toResourceProperties AliasTargetProperty {..}
    = ResourceProperties
        {awsType = "AWS::Route53::RecordSetGroup.AliasTarget",
         supportsTags = Prelude.False,
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