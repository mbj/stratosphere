module Stratosphere.CleanRooms.Membership.MembershipJobComputePaymentConfigProperty (
        MembershipJobComputePaymentConfigProperty(..),
        mkMembershipJobComputePaymentConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MembershipJobComputePaymentConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-membership-membershipjobcomputepaymentconfig.html>
    MembershipJobComputePaymentConfigProperty {haddock_workaround_ :: (),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-membership-membershipjobcomputepaymentconfig.html#cfn-cleanrooms-membership-membershipjobcomputepaymentconfig-isresponsible>
                                               isResponsible :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMembershipJobComputePaymentConfigProperty ::
  Value Prelude.Bool -> MembershipJobComputePaymentConfigProperty
mkMembershipJobComputePaymentConfigProperty isResponsible
  = MembershipJobComputePaymentConfigProperty
      {haddock_workaround_ = (), isResponsible = isResponsible}
instance ToResourceProperties MembershipJobComputePaymentConfigProperty where
  toResourceProperties MembershipJobComputePaymentConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::Membership.MembershipJobComputePaymentConfig",
         supportsTags = Prelude.False,
         properties = ["IsResponsible" JSON..= isResponsible]}
instance JSON.ToJSON MembershipJobComputePaymentConfigProperty where
  toJSON MembershipJobComputePaymentConfigProperty {..}
    = JSON.object ["IsResponsible" JSON..= isResponsible]
instance Property "IsResponsible" MembershipJobComputePaymentConfigProperty where
  type PropertyType "IsResponsible" MembershipJobComputePaymentConfigProperty = Value Prelude.Bool
  set newValue MembershipJobComputePaymentConfigProperty {..}
    = MembershipJobComputePaymentConfigProperty
        {isResponsible = newValue, ..}