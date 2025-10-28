module Stratosphere.NetworkFirewall.RuleGroup.IPSetReferenceProperty (
        IPSetReferenceProperty(..), mkIPSetReferenceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IPSetReferenceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-ipsetreference.html>
    IPSetReferenceProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-ipsetreference.html#cfn-networkfirewall-rulegroup-ipsetreference-referencearn>
                            referenceArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIPSetReferenceProperty :: IPSetReferenceProperty
mkIPSetReferenceProperty
  = IPSetReferenceProperty
      {haddock_workaround_ = (), referenceArn = Prelude.Nothing}
instance ToResourceProperties IPSetReferenceProperty where
  toResourceProperties IPSetReferenceProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::RuleGroup.IPSetReference",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ReferenceArn" Prelude.<$> referenceArn])}
instance JSON.ToJSON IPSetReferenceProperty where
  toJSON IPSetReferenceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ReferenceArn" Prelude.<$> referenceArn]))
instance Property "ReferenceArn" IPSetReferenceProperty where
  type PropertyType "ReferenceArn" IPSetReferenceProperty = Value Prelude.Text
  set newValue IPSetReferenceProperty {..}
    = IPSetReferenceProperty {referenceArn = Prelude.pure newValue, ..}