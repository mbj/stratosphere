module Stratosphere.PCAConnectorAD.Template.ApplicationPoliciesProperty (
        module Exports, ApplicationPoliciesProperty(..),
        mkApplicationPoliciesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.PCAConnectorAD.Template.ApplicationPolicyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ApplicationPoliciesProperty
  = ApplicationPoliciesProperty {critical :: (Prelude.Maybe (Value Prelude.Bool)),
                                 policies :: [ApplicationPolicyProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApplicationPoliciesProperty ::
  [ApplicationPolicyProperty] -> ApplicationPoliciesProperty
mkApplicationPoliciesProperty policies
  = ApplicationPoliciesProperty
      {policies = policies, critical = Prelude.Nothing}
instance ToResourceProperties ApplicationPoliciesProperty where
  toResourceProperties ApplicationPoliciesProperty {..}
    = ResourceProperties
        {awsType = "AWS::PCAConnectorAD::Template.ApplicationPolicies",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Policies" JSON..= policies]
                           (Prelude.catMaybes [(JSON..=) "Critical" Prelude.<$> critical]))}
instance JSON.ToJSON ApplicationPoliciesProperty where
  toJSON ApplicationPoliciesProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Policies" JSON..= policies]
              (Prelude.catMaybes [(JSON..=) "Critical" Prelude.<$> critical])))
instance Property "Critical" ApplicationPoliciesProperty where
  type PropertyType "Critical" ApplicationPoliciesProperty = Value Prelude.Bool
  set newValue ApplicationPoliciesProperty {..}
    = ApplicationPoliciesProperty
        {critical = Prelude.pure newValue, ..}
instance Property "Policies" ApplicationPoliciesProperty where
  type PropertyType "Policies" ApplicationPoliciesProperty = [ApplicationPolicyProperty]
  set newValue ApplicationPoliciesProperty {..}
    = ApplicationPoliciesProperty {policies = newValue, ..}