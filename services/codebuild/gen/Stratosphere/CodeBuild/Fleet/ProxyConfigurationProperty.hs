module Stratosphere.CodeBuild.Fleet.ProxyConfigurationProperty (
        module Exports, ProxyConfigurationProperty(..),
        mkProxyConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CodeBuild.Fleet.FleetProxyRuleProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProxyConfigurationProperty
  = ProxyConfigurationProperty {defaultBehavior :: (Prelude.Maybe (Value Prelude.Text)),
                                orderedProxyRules :: (Prelude.Maybe [FleetProxyRuleProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProxyConfigurationProperty :: ProxyConfigurationProperty
mkProxyConfigurationProperty
  = ProxyConfigurationProperty
      {defaultBehavior = Prelude.Nothing,
       orderedProxyRules = Prelude.Nothing}
instance ToResourceProperties ProxyConfigurationProperty where
  toResourceProperties ProxyConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeBuild::Fleet.ProxyConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DefaultBehavior" Prelude.<$> defaultBehavior,
                            (JSON..=) "OrderedProxyRules" Prelude.<$> orderedProxyRules])}
instance JSON.ToJSON ProxyConfigurationProperty where
  toJSON ProxyConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DefaultBehavior" Prelude.<$> defaultBehavior,
               (JSON..=) "OrderedProxyRules" Prelude.<$> orderedProxyRules]))
instance Property "DefaultBehavior" ProxyConfigurationProperty where
  type PropertyType "DefaultBehavior" ProxyConfigurationProperty = Value Prelude.Text
  set newValue ProxyConfigurationProperty {..}
    = ProxyConfigurationProperty
        {defaultBehavior = Prelude.pure newValue, ..}
instance Property "OrderedProxyRules" ProxyConfigurationProperty where
  type PropertyType "OrderedProxyRules" ProxyConfigurationProperty = [FleetProxyRuleProperty]
  set newValue ProxyConfigurationProperty {..}
    = ProxyConfigurationProperty
        {orderedProxyRules = Prelude.pure newValue, ..}