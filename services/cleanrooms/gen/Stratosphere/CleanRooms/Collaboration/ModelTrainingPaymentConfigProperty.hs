module Stratosphere.CleanRooms.Collaboration.ModelTrainingPaymentConfigProperty (
        ModelTrainingPaymentConfigProperty(..),
        mkModelTrainingPaymentConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ModelTrainingPaymentConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-collaboration-modeltrainingpaymentconfig.html>
    ModelTrainingPaymentConfigProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-collaboration-modeltrainingpaymentconfig.html#cfn-cleanrooms-collaboration-modeltrainingpaymentconfig-isresponsible>
                                        isResponsible :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkModelTrainingPaymentConfigProperty ::
  Value Prelude.Bool -> ModelTrainingPaymentConfigProperty
mkModelTrainingPaymentConfigProperty isResponsible
  = ModelTrainingPaymentConfigProperty
      {haddock_workaround_ = (), isResponsible = isResponsible}
instance ToResourceProperties ModelTrainingPaymentConfigProperty where
  toResourceProperties ModelTrainingPaymentConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::Collaboration.ModelTrainingPaymentConfig",
         supportsTags = Prelude.False,
         properties = ["IsResponsible" JSON..= isResponsible]}
instance JSON.ToJSON ModelTrainingPaymentConfigProperty where
  toJSON ModelTrainingPaymentConfigProperty {..}
    = JSON.object ["IsResponsible" JSON..= isResponsible]
instance Property "IsResponsible" ModelTrainingPaymentConfigProperty where
  type PropertyType "IsResponsible" ModelTrainingPaymentConfigProperty = Value Prelude.Bool
  set newValue ModelTrainingPaymentConfigProperty {..}
    = ModelTrainingPaymentConfigProperty {isResponsible = newValue, ..}