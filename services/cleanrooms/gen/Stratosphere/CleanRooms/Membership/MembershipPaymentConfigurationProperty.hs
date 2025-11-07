module Stratosphere.CleanRooms.Membership.MembershipPaymentConfigurationProperty (
        module Exports, MembershipPaymentConfigurationProperty(..),
        mkMembershipPaymentConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CleanRooms.Membership.MembershipJobComputePaymentConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.CleanRooms.Membership.MembershipMLPaymentConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.CleanRooms.Membership.MembershipQueryComputePaymentConfigProperty as Exports
import Stratosphere.ResourceProperties
data MembershipPaymentConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-membership-membershippaymentconfiguration.html>
    MembershipPaymentConfigurationProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-membership-membershippaymentconfiguration.html#cfn-cleanrooms-membership-membershippaymentconfiguration-jobcompute>
                                            jobCompute :: (Prelude.Maybe MembershipJobComputePaymentConfigProperty),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-membership-membershippaymentconfiguration.html#cfn-cleanrooms-membership-membershippaymentconfiguration-machinelearning>
                                            machineLearning :: (Prelude.Maybe MembershipMLPaymentConfigProperty),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-membership-membershippaymentconfiguration.html#cfn-cleanrooms-membership-membershippaymentconfiguration-querycompute>
                                            queryCompute :: MembershipQueryComputePaymentConfigProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMembershipPaymentConfigurationProperty ::
  MembershipQueryComputePaymentConfigProperty
  -> MembershipPaymentConfigurationProperty
mkMembershipPaymentConfigurationProperty queryCompute
  = MembershipPaymentConfigurationProperty
      {haddock_workaround_ = (), queryCompute = queryCompute,
       jobCompute = Prelude.Nothing, machineLearning = Prelude.Nothing}
instance ToResourceProperties MembershipPaymentConfigurationProperty where
  toResourceProperties MembershipPaymentConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::Membership.MembershipPaymentConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["QueryCompute" JSON..= queryCompute]
                           (Prelude.catMaybes
                              [(JSON..=) "JobCompute" Prelude.<$> jobCompute,
                               (JSON..=) "MachineLearning" Prelude.<$> machineLearning]))}
instance JSON.ToJSON MembershipPaymentConfigurationProperty where
  toJSON MembershipPaymentConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["QueryCompute" JSON..= queryCompute]
              (Prelude.catMaybes
                 [(JSON..=) "JobCompute" Prelude.<$> jobCompute,
                  (JSON..=) "MachineLearning" Prelude.<$> machineLearning])))
instance Property "JobCompute" MembershipPaymentConfigurationProperty where
  type PropertyType "JobCompute" MembershipPaymentConfigurationProperty = MembershipJobComputePaymentConfigProperty
  set newValue MembershipPaymentConfigurationProperty {..}
    = MembershipPaymentConfigurationProperty
        {jobCompute = Prelude.pure newValue, ..}
instance Property "MachineLearning" MembershipPaymentConfigurationProperty where
  type PropertyType "MachineLearning" MembershipPaymentConfigurationProperty = MembershipMLPaymentConfigProperty
  set newValue MembershipPaymentConfigurationProperty {..}
    = MembershipPaymentConfigurationProperty
        {machineLearning = Prelude.pure newValue, ..}
instance Property "QueryCompute" MembershipPaymentConfigurationProperty where
  type PropertyType "QueryCompute" MembershipPaymentConfigurationProperty = MembershipQueryComputePaymentConfigProperty
  set newValue MembershipPaymentConfigurationProperty {..}
    = MembershipPaymentConfigurationProperty
        {queryCompute = newValue, ..}