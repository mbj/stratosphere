module Stratosphere.NetworkFirewall.RuleGroup.PortSetProperty (
        PortSetProperty(..), mkPortSetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PortSetProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-portset.html>
    PortSetProperty {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-portset.html#cfn-networkfirewall-rulegroup-portset-definition>
                     definition :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPortSetProperty :: PortSetProperty
mkPortSetProperty
  = PortSetProperty
      {haddock_workaround_ = (), definition = Prelude.Nothing}
instance ToResourceProperties PortSetProperty where
  toResourceProperties PortSetProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::RuleGroup.PortSet",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Definition" Prelude.<$> definition])}
instance JSON.ToJSON PortSetProperty where
  toJSON PortSetProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Definition" Prelude.<$> definition]))
instance Property "Definition" PortSetProperty where
  type PropertyType "Definition" PortSetProperty = ValueList Prelude.Text
  set newValue PortSetProperty {..}
    = PortSetProperty {definition = Prelude.pure newValue, ..}