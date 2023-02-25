module Stratosphere.FMS.Policy.SecurityServicePolicyDataProperty (
        module Exports, SecurityServicePolicyDataProperty(..),
        mkSecurityServicePolicyDataProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.FMS.Policy.PolicyOptionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SecurityServicePolicyDataProperty
  = SecurityServicePolicyDataProperty {managedServiceData :: (Prelude.Maybe (Value Prelude.Text)),
                                       policyOption :: (Prelude.Maybe PolicyOptionProperty),
                                       type' :: (Value Prelude.Text)}
mkSecurityServicePolicyDataProperty ::
  Value Prelude.Text -> SecurityServicePolicyDataProperty
mkSecurityServicePolicyDataProperty type'
  = SecurityServicePolicyDataProperty
      {type' = type', managedServiceData = Prelude.Nothing,
       policyOption = Prelude.Nothing}
instance ToResourceProperties SecurityServicePolicyDataProperty where
  toResourceProperties SecurityServicePolicyDataProperty {..}
    = ResourceProperties
        {awsType = "AWS::FMS::Policy.SecurityServicePolicyData",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "ManagedServiceData" Prelude.<$> managedServiceData,
                               (JSON..=) "PolicyOption" Prelude.<$> policyOption]))}
instance JSON.ToJSON SecurityServicePolicyDataProperty where
  toJSON SecurityServicePolicyDataProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "ManagedServiceData" Prelude.<$> managedServiceData,
                  (JSON..=) "PolicyOption" Prelude.<$> policyOption])))
instance Property "ManagedServiceData" SecurityServicePolicyDataProperty where
  type PropertyType "ManagedServiceData" SecurityServicePolicyDataProperty = Value Prelude.Text
  set newValue SecurityServicePolicyDataProperty {..}
    = SecurityServicePolicyDataProperty
        {managedServiceData = Prelude.pure newValue, ..}
instance Property "PolicyOption" SecurityServicePolicyDataProperty where
  type PropertyType "PolicyOption" SecurityServicePolicyDataProperty = PolicyOptionProperty
  set newValue SecurityServicePolicyDataProperty {..}
    = SecurityServicePolicyDataProperty
        {policyOption = Prelude.pure newValue, ..}
instance Property "Type" SecurityServicePolicyDataProperty where
  type PropertyType "Type" SecurityServicePolicyDataProperty = Value Prelude.Text
  set newValue SecurityServicePolicyDataProperty {..}
    = SecurityServicePolicyDataProperty {type' = newValue, ..}