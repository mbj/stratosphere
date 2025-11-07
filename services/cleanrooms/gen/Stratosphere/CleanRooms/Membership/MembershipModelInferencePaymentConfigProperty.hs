module Stratosphere.CleanRooms.Membership.MembershipModelInferencePaymentConfigProperty (
        MembershipModelInferencePaymentConfigProperty(..),
        mkMembershipModelInferencePaymentConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MembershipModelInferencePaymentConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-membership-membershipmodelinferencepaymentconfig.html>
    MembershipModelInferencePaymentConfigProperty {haddock_workaround_ :: (),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-membership-membershipmodelinferencepaymentconfig.html#cfn-cleanrooms-membership-membershipmodelinferencepaymentconfig-isresponsible>
                                                   isResponsible :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMembershipModelInferencePaymentConfigProperty ::
  Value Prelude.Bool -> MembershipModelInferencePaymentConfigProperty
mkMembershipModelInferencePaymentConfigProperty isResponsible
  = MembershipModelInferencePaymentConfigProperty
      {haddock_workaround_ = (), isResponsible = isResponsible}
instance ToResourceProperties MembershipModelInferencePaymentConfigProperty where
  toResourceProperties
    MembershipModelInferencePaymentConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::Membership.MembershipModelInferencePaymentConfig",
         supportsTags = Prelude.False,
         properties = ["IsResponsible" JSON..= isResponsible]}
instance JSON.ToJSON MembershipModelInferencePaymentConfigProperty where
  toJSON MembershipModelInferencePaymentConfigProperty {..}
    = JSON.object ["IsResponsible" JSON..= isResponsible]
instance Property "IsResponsible" MembershipModelInferencePaymentConfigProperty where
  type PropertyType "IsResponsible" MembershipModelInferencePaymentConfigProperty = Value Prelude.Bool
  set newValue MembershipModelInferencePaymentConfigProperty {..}
    = MembershipModelInferencePaymentConfigProperty
        {isResponsible = newValue, ..}