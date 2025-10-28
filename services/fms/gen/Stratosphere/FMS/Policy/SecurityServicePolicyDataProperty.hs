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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-securityservicepolicydata.html>
    SecurityServicePolicyDataProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-securityservicepolicydata.html#cfn-fms-policy-securityservicepolicydata-managedservicedata>
                                       managedServiceData :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-securityservicepolicydata.html#cfn-fms-policy-securityservicepolicydata-policyoption>
                                       policyOption :: (Prelude.Maybe PolicyOptionProperty),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-securityservicepolicydata.html#cfn-fms-policy-securityservicepolicydata-type>
                                       type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSecurityServicePolicyDataProperty ::
  Value Prelude.Text -> SecurityServicePolicyDataProperty
mkSecurityServicePolicyDataProperty type'
  = SecurityServicePolicyDataProperty
      {haddock_workaround_ = (), type' = type',
       managedServiceData = Prelude.Nothing,
       policyOption = Prelude.Nothing}
instance ToResourceProperties SecurityServicePolicyDataProperty where
  toResourceProperties SecurityServicePolicyDataProperty {..}
    = ResourceProperties
        {awsType = "AWS::FMS::Policy.SecurityServicePolicyData",
         supportsTags = Prelude.False,
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