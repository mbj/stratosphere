module Stratosphere.CleanRooms.Membership.MembershipMLPaymentConfigProperty (
        module Exports, MembershipMLPaymentConfigProperty(..),
        mkMembershipMLPaymentConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CleanRooms.Membership.MembershipModelInferencePaymentConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.CleanRooms.Membership.MembershipModelTrainingPaymentConfigProperty as Exports
import Stratosphere.ResourceProperties
data MembershipMLPaymentConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-membership-membershipmlpaymentconfig.html>
    MembershipMLPaymentConfigProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-membership-membershipmlpaymentconfig.html#cfn-cleanrooms-membership-membershipmlpaymentconfig-modelinference>
                                       modelInference :: (Prelude.Maybe MembershipModelInferencePaymentConfigProperty),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-membership-membershipmlpaymentconfig.html#cfn-cleanrooms-membership-membershipmlpaymentconfig-modeltraining>
                                       modelTraining :: (Prelude.Maybe MembershipModelTrainingPaymentConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMembershipMLPaymentConfigProperty ::
  MembershipMLPaymentConfigProperty
mkMembershipMLPaymentConfigProperty
  = MembershipMLPaymentConfigProperty
      {haddock_workaround_ = (), modelInference = Prelude.Nothing,
       modelTraining = Prelude.Nothing}
instance ToResourceProperties MembershipMLPaymentConfigProperty where
  toResourceProperties MembershipMLPaymentConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::Membership.MembershipMLPaymentConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ModelInference" Prelude.<$> modelInference,
                            (JSON..=) "ModelTraining" Prelude.<$> modelTraining])}
instance JSON.ToJSON MembershipMLPaymentConfigProperty where
  toJSON MembershipMLPaymentConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ModelInference" Prelude.<$> modelInference,
               (JSON..=) "ModelTraining" Prelude.<$> modelTraining]))
instance Property "ModelInference" MembershipMLPaymentConfigProperty where
  type PropertyType "ModelInference" MembershipMLPaymentConfigProperty = MembershipModelInferencePaymentConfigProperty
  set newValue MembershipMLPaymentConfigProperty {..}
    = MembershipMLPaymentConfigProperty
        {modelInference = Prelude.pure newValue, ..}
instance Property "ModelTraining" MembershipMLPaymentConfigProperty where
  type PropertyType "ModelTraining" MembershipMLPaymentConfigProperty = MembershipModelTrainingPaymentConfigProperty
  set newValue MembershipMLPaymentConfigProperty {..}
    = MembershipMLPaymentConfigProperty
        {modelTraining = Prelude.pure newValue, ..}