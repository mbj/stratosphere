module Stratosphere.CleanRooms.Collaboration.QueryComputePaymentConfigProperty (
        QueryComputePaymentConfigProperty(..),
        mkQueryComputePaymentConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data QueryComputePaymentConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-collaboration-querycomputepaymentconfig.html>
    QueryComputePaymentConfigProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-collaboration-querycomputepaymentconfig.html#cfn-cleanrooms-collaboration-querycomputepaymentconfig-isresponsible>
                                       isResponsible :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkQueryComputePaymentConfigProperty ::
  Value Prelude.Bool -> QueryComputePaymentConfigProperty
mkQueryComputePaymentConfigProperty isResponsible
  = QueryComputePaymentConfigProperty
      {haddock_workaround_ = (), isResponsible = isResponsible}
instance ToResourceProperties QueryComputePaymentConfigProperty where
  toResourceProperties QueryComputePaymentConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::Collaboration.QueryComputePaymentConfig",
         supportsTags = Prelude.False,
         properties = ["IsResponsible" JSON..= isResponsible]}
instance JSON.ToJSON QueryComputePaymentConfigProperty where
  toJSON QueryComputePaymentConfigProperty {..}
    = JSON.object ["IsResponsible" JSON..= isResponsible]
instance Property "IsResponsible" QueryComputePaymentConfigProperty where
  type PropertyType "IsResponsible" QueryComputePaymentConfigProperty = Value Prelude.Bool
  set newValue QueryComputePaymentConfigProperty {..}
    = QueryComputePaymentConfigProperty {isResponsible = newValue, ..}