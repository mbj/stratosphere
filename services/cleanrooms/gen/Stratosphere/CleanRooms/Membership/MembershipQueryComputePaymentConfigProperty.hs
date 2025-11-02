module Stratosphere.CleanRooms.Membership.MembershipQueryComputePaymentConfigProperty (
        MembershipQueryComputePaymentConfigProperty(..),
        mkMembershipQueryComputePaymentConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MembershipQueryComputePaymentConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-membership-membershipquerycomputepaymentconfig.html>
    MembershipQueryComputePaymentConfigProperty {haddock_workaround_ :: (),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-membership-membershipquerycomputepaymentconfig.html#cfn-cleanrooms-membership-membershipquerycomputepaymentconfig-isresponsible>
                                                 isResponsible :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMembershipQueryComputePaymentConfigProperty ::
  Value Prelude.Bool -> MembershipQueryComputePaymentConfigProperty
mkMembershipQueryComputePaymentConfigProperty isResponsible
  = MembershipQueryComputePaymentConfigProperty
      {haddock_workaround_ = (), isResponsible = isResponsible}
instance ToResourceProperties MembershipQueryComputePaymentConfigProperty where
  toResourceProperties
    MembershipQueryComputePaymentConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::Membership.MembershipQueryComputePaymentConfig",
         supportsTags = Prelude.False,
         properties = ["IsResponsible" JSON..= isResponsible]}
instance JSON.ToJSON MembershipQueryComputePaymentConfigProperty where
  toJSON MembershipQueryComputePaymentConfigProperty {..}
    = JSON.object ["IsResponsible" JSON..= isResponsible]
instance Property "IsResponsible" MembershipQueryComputePaymentConfigProperty where
  type PropertyType "IsResponsible" MembershipQueryComputePaymentConfigProperty = Value Prelude.Bool
  set newValue MembershipQueryComputePaymentConfigProperty {..}
    = MembershipQueryComputePaymentConfigProperty
        {isResponsible = newValue, ..}