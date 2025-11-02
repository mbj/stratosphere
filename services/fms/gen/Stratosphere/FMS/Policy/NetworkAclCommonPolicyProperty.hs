module Stratosphere.FMS.Policy.NetworkAclCommonPolicyProperty (
        module Exports, NetworkAclCommonPolicyProperty(..),
        mkNetworkAclCommonPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.FMS.Policy.NetworkAclEntrySetProperty as Exports
import Stratosphere.ResourceProperties
data NetworkAclCommonPolicyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-networkaclcommonpolicy.html>
    NetworkAclCommonPolicyProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-networkaclcommonpolicy.html#cfn-fms-policy-networkaclcommonpolicy-networkaclentryset>
                                    networkAclEntrySet :: NetworkAclEntrySetProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNetworkAclCommonPolicyProperty ::
  NetworkAclEntrySetProperty -> NetworkAclCommonPolicyProperty
mkNetworkAclCommonPolicyProperty networkAclEntrySet
  = NetworkAclCommonPolicyProperty
      {haddock_workaround_ = (), networkAclEntrySet = networkAclEntrySet}
instance ToResourceProperties NetworkAclCommonPolicyProperty where
  toResourceProperties NetworkAclCommonPolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::FMS::Policy.NetworkAclCommonPolicy",
         supportsTags = Prelude.False,
         properties = ["NetworkAclEntrySet" JSON..= networkAclEntrySet]}
instance JSON.ToJSON NetworkAclCommonPolicyProperty where
  toJSON NetworkAclCommonPolicyProperty {..}
    = JSON.object ["NetworkAclEntrySet" JSON..= networkAclEntrySet]
instance Property "NetworkAclEntrySet" NetworkAclCommonPolicyProperty where
  type PropertyType "NetworkAclEntrySet" NetworkAclCommonPolicyProperty = NetworkAclEntrySetProperty
  set newValue NetworkAclCommonPolicyProperty {..}
    = NetworkAclCommonPolicyProperty
        {networkAclEntrySet = newValue, ..}