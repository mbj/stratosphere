module Stratosphere.CleanRooms.Collaboration.JobComputePaymentConfigProperty (
        JobComputePaymentConfigProperty(..),
        mkJobComputePaymentConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data JobComputePaymentConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-collaboration-jobcomputepaymentconfig.html>
    JobComputePaymentConfigProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-collaboration-jobcomputepaymentconfig.html#cfn-cleanrooms-collaboration-jobcomputepaymentconfig-isresponsible>
                                     isResponsible :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkJobComputePaymentConfigProperty ::
  Value Prelude.Bool -> JobComputePaymentConfigProperty
mkJobComputePaymentConfigProperty isResponsible
  = JobComputePaymentConfigProperty
      {haddock_workaround_ = (), isResponsible = isResponsible}
instance ToResourceProperties JobComputePaymentConfigProperty where
  toResourceProperties JobComputePaymentConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::Collaboration.JobComputePaymentConfig",
         supportsTags = Prelude.False,
         properties = ["IsResponsible" JSON..= isResponsible]}
instance JSON.ToJSON JobComputePaymentConfigProperty where
  toJSON JobComputePaymentConfigProperty {..}
    = JSON.object ["IsResponsible" JSON..= isResponsible]
instance Property "IsResponsible" JobComputePaymentConfigProperty where
  type PropertyType "IsResponsible" JobComputePaymentConfigProperty = Value Prelude.Bool
  set newValue JobComputePaymentConfigProperty {..}
    = JobComputePaymentConfigProperty {isResponsible = newValue, ..}