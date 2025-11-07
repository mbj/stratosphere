module Stratosphere.CleanRooms.Membership.MembershipModelTrainingPaymentConfigProperty (
        MembershipModelTrainingPaymentConfigProperty(..),
        mkMembershipModelTrainingPaymentConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MembershipModelTrainingPaymentConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-membership-membershipmodeltrainingpaymentconfig.html>
    MembershipModelTrainingPaymentConfigProperty {haddock_workaround_ :: (),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-membership-membershipmodeltrainingpaymentconfig.html#cfn-cleanrooms-membership-membershipmodeltrainingpaymentconfig-isresponsible>
                                                  isResponsible :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMembershipModelTrainingPaymentConfigProperty ::
  Value Prelude.Bool -> MembershipModelTrainingPaymentConfigProperty
mkMembershipModelTrainingPaymentConfigProperty isResponsible
  = MembershipModelTrainingPaymentConfigProperty
      {haddock_workaround_ = (), isResponsible = isResponsible}
instance ToResourceProperties MembershipModelTrainingPaymentConfigProperty where
  toResourceProperties
    MembershipModelTrainingPaymentConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::Membership.MembershipModelTrainingPaymentConfig",
         supportsTags = Prelude.False,
         properties = ["IsResponsible" JSON..= isResponsible]}
instance JSON.ToJSON MembershipModelTrainingPaymentConfigProperty where
  toJSON MembershipModelTrainingPaymentConfigProperty {..}
    = JSON.object ["IsResponsible" JSON..= isResponsible]
instance Property "IsResponsible" MembershipModelTrainingPaymentConfigProperty where
  type PropertyType "IsResponsible" MembershipModelTrainingPaymentConfigProperty = Value Prelude.Bool
  set newValue MembershipModelTrainingPaymentConfigProperty {..}
    = MembershipModelTrainingPaymentConfigProperty
        {isResponsible = newValue, ..}