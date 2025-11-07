module Stratosphere.CleanRooms.Collaboration.MLPaymentConfigProperty (
        module Exports, MLPaymentConfigProperty(..),
        mkMLPaymentConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CleanRooms.Collaboration.ModelInferencePaymentConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.CleanRooms.Collaboration.ModelTrainingPaymentConfigProperty as Exports
import Stratosphere.ResourceProperties
data MLPaymentConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-collaboration-mlpaymentconfig.html>
    MLPaymentConfigProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-collaboration-mlpaymentconfig.html#cfn-cleanrooms-collaboration-mlpaymentconfig-modelinference>
                             modelInference :: (Prelude.Maybe ModelInferencePaymentConfigProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-collaboration-mlpaymentconfig.html#cfn-cleanrooms-collaboration-mlpaymentconfig-modeltraining>
                             modelTraining :: (Prelude.Maybe ModelTrainingPaymentConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMLPaymentConfigProperty :: MLPaymentConfigProperty
mkMLPaymentConfigProperty
  = MLPaymentConfigProperty
      {haddock_workaround_ = (), modelInference = Prelude.Nothing,
       modelTraining = Prelude.Nothing}
instance ToResourceProperties MLPaymentConfigProperty where
  toResourceProperties MLPaymentConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::Collaboration.MLPaymentConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ModelInference" Prelude.<$> modelInference,
                            (JSON..=) "ModelTraining" Prelude.<$> modelTraining])}
instance JSON.ToJSON MLPaymentConfigProperty where
  toJSON MLPaymentConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ModelInference" Prelude.<$> modelInference,
               (JSON..=) "ModelTraining" Prelude.<$> modelTraining]))
instance Property "ModelInference" MLPaymentConfigProperty where
  type PropertyType "ModelInference" MLPaymentConfigProperty = ModelInferencePaymentConfigProperty
  set newValue MLPaymentConfigProperty {..}
    = MLPaymentConfigProperty
        {modelInference = Prelude.pure newValue, ..}
instance Property "ModelTraining" MLPaymentConfigProperty where
  type PropertyType "ModelTraining" MLPaymentConfigProperty = ModelTrainingPaymentConfigProperty
  set newValue MLPaymentConfigProperty {..}
    = MLPaymentConfigProperty
        {modelTraining = Prelude.pure newValue, ..}