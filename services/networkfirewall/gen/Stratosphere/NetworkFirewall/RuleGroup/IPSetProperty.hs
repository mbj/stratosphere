module Stratosphere.NetworkFirewall.RuleGroup.IPSetProperty (
        IPSetProperty(..), mkIPSetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IPSetProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-ipset.html>
    IPSetProperty {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-ipset.html#cfn-networkfirewall-rulegroup-ipset-definition>
                   definition :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIPSetProperty :: IPSetProperty
mkIPSetProperty
  = IPSetProperty
      {haddock_workaround_ = (), definition = Prelude.Nothing}
instance ToResourceProperties IPSetProperty where
  toResourceProperties IPSetProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::RuleGroup.IPSet",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Definition" Prelude.<$> definition])}
instance JSON.ToJSON IPSetProperty where
  toJSON IPSetProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Definition" Prelude.<$> definition]))
instance Property "Definition" IPSetProperty where
  type PropertyType "Definition" IPSetProperty = ValueList Prelude.Text
  set newValue IPSetProperty {..}
    = IPSetProperty {definition = Prelude.pure newValue, ..}