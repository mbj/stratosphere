module Stratosphere.CleanRooms.Collaboration.ModelInferencePaymentConfigProperty (
        ModelInferencePaymentConfigProperty(..),
        mkModelInferencePaymentConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ModelInferencePaymentConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-collaboration-modelinferencepaymentconfig.html>
    ModelInferencePaymentConfigProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-collaboration-modelinferencepaymentconfig.html#cfn-cleanrooms-collaboration-modelinferencepaymentconfig-isresponsible>
                                         isResponsible :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkModelInferencePaymentConfigProperty ::
  Value Prelude.Bool -> ModelInferencePaymentConfigProperty
mkModelInferencePaymentConfigProperty isResponsible
  = ModelInferencePaymentConfigProperty
      {haddock_workaround_ = (), isResponsible = isResponsible}
instance ToResourceProperties ModelInferencePaymentConfigProperty where
  toResourceProperties ModelInferencePaymentConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::Collaboration.ModelInferencePaymentConfig",
         supportsTags = Prelude.False,
         properties = ["IsResponsible" JSON..= isResponsible]}
instance JSON.ToJSON ModelInferencePaymentConfigProperty where
  toJSON ModelInferencePaymentConfigProperty {..}
    = JSON.object ["IsResponsible" JSON..= isResponsible]
instance Property "IsResponsible" ModelInferencePaymentConfigProperty where
  type PropertyType "IsResponsible" ModelInferencePaymentConfigProperty = Value Prelude.Bool
  set newValue ModelInferencePaymentConfigProperty {..}
    = ModelInferencePaymentConfigProperty
        {isResponsible = newValue, ..}