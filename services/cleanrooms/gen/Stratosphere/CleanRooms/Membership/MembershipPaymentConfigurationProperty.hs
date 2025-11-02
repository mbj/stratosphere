module Stratosphere.CleanRooms.Membership.MembershipPaymentConfigurationProperty (
        module Exports, MembershipPaymentConfigurationProperty(..),
        mkMembershipPaymentConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CleanRooms.Membership.MembershipQueryComputePaymentConfigProperty as Exports
import Stratosphere.ResourceProperties
data MembershipPaymentConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-membership-membershippaymentconfiguration.html>
    MembershipPaymentConfigurationProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-membership-membershippaymentconfiguration.html#cfn-cleanrooms-membership-membershippaymentconfiguration-querycompute>
                                            queryCompute :: MembershipQueryComputePaymentConfigProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMembershipPaymentConfigurationProperty ::
  MembershipQueryComputePaymentConfigProperty
  -> MembershipPaymentConfigurationProperty
mkMembershipPaymentConfigurationProperty queryCompute
  = MembershipPaymentConfigurationProperty
      {haddock_workaround_ = (), queryCompute = queryCompute}
instance ToResourceProperties MembershipPaymentConfigurationProperty where
  toResourceProperties MembershipPaymentConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::Membership.MembershipPaymentConfiguration",
         supportsTags = Prelude.False,
         properties = ["QueryCompute" JSON..= queryCompute]}
instance JSON.ToJSON MembershipPaymentConfigurationProperty where
  toJSON MembershipPaymentConfigurationProperty {..}
    = JSON.object ["QueryCompute" JSON..= queryCompute]
instance Property "QueryCompute" MembershipPaymentConfigurationProperty where
  type PropertyType "QueryCompute" MembershipPaymentConfigurationProperty = MembershipQueryComputePaymentConfigProperty
  set newValue MembershipPaymentConfigurationProperty {..}
    = MembershipPaymentConfigurationProperty
        {queryCompute = newValue, ..}