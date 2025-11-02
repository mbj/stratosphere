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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-fleet-proxyconfiguration.html>
    ProxyConfigurationProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-fleet-proxyconfiguration.html#cfn-codebuild-fleet-proxyconfiguration-defaultbehavior>
                                defaultBehavior :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-fleet-proxyconfiguration.html#cfn-codebuild-fleet-proxyconfiguration-orderedproxyrules>
                                orderedProxyRules :: (Prelude.Maybe [FleetProxyRuleProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProxyConfigurationProperty :: ProxyConfigurationProperty
mkProxyConfigurationProperty
  = ProxyConfigurationProperty
      {haddock_workaround_ = (), defaultBehavior = Prelude.Nothing,
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