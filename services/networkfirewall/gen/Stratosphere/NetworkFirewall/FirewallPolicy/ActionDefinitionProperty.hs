module Stratosphere.NetworkFirewall.FirewallPolicy.ActionDefinitionProperty (
        module Exports, ActionDefinitionProperty(..),
        mkActionDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.NetworkFirewall.FirewallPolicy.PublishMetricActionProperty as Exports
import Stratosphere.ResourceProperties
data ActionDefinitionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-firewallpolicy-actiondefinition.html>
    ActionDefinitionProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-firewallpolicy-actiondefinition.html#cfn-networkfirewall-firewallpolicy-actiondefinition-publishmetricaction>
                              publishMetricAction :: (Prelude.Maybe PublishMetricActionProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkActionDefinitionProperty :: ActionDefinitionProperty
mkActionDefinitionProperty
  = ActionDefinitionProperty
      {haddock_workaround_ = (), publishMetricAction = Prelude.Nothing}
instance ToResourceProperties ActionDefinitionProperty where
  toResourceProperties ActionDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::FirewallPolicy.ActionDefinition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PublishMetricAction" Prelude.<$> publishMetricAction])}
instance JSON.ToJSON ActionDefinitionProperty where
  toJSON ActionDefinitionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PublishMetricAction" Prelude.<$> publishMetricAction]))
instance Property "PublishMetricAction" ActionDefinitionProperty where
  type PropertyType "PublishMetricAction" ActionDefinitionProperty = PublishMetricActionProperty
  set newValue ActionDefinitionProperty {..}
    = ActionDefinitionProperty
        {publishMetricAction = Prelude.pure newValue, ..}