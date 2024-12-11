module Stratosphere.SecurityHub.ConfigurationPolicy.PolicyProperty (
        module Exports, PolicyProperty(..), mkPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SecurityHub.ConfigurationPolicy.SecurityHubPolicyProperty as Exports
import Stratosphere.ResourceProperties
data PolicyProperty
  = PolicyProperty {securityHub :: (Prelude.Maybe SecurityHubPolicyProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPolicyProperty :: PolicyProperty
mkPolicyProperty = PolicyProperty {securityHub = Prelude.Nothing}
instance ToResourceProperties PolicyProperty where
  toResourceProperties PolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::SecurityHub::ConfigurationPolicy.Policy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SecurityHub" Prelude.<$> securityHub])}
instance JSON.ToJSON PolicyProperty where
  toJSON PolicyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SecurityHub" Prelude.<$> securityHub]))
instance Property "SecurityHub" PolicyProperty where
  type PropertyType "SecurityHub" PolicyProperty = SecurityHubPolicyProperty
  set newValue PolicyProperty {}
    = PolicyProperty {securityHub = Prelude.pure newValue, ..}