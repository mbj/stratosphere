module Stratosphere.SageMaker.EndpointConfig.CapacityReservationConfigProperty (
        CapacityReservationConfigProperty(..),
        mkCapacityReservationConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CapacityReservationConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-capacityreservationconfig.html>
    CapacityReservationConfigProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-capacityreservationconfig.html#cfn-sagemaker-endpointconfig-capacityreservationconfig-capacityreservationpreference>
                                       capacityReservationPreference :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-capacityreservationconfig.html#cfn-sagemaker-endpointconfig-capacityreservationconfig-mlreservationarn>
                                       mlReservationArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCapacityReservationConfigProperty ::
  CapacityReservationConfigProperty
mkCapacityReservationConfigProperty
  = CapacityReservationConfigProperty
      {haddock_workaround_ = (),
       capacityReservationPreference = Prelude.Nothing,
       mlReservationArn = Prelude.Nothing}
instance ToResourceProperties CapacityReservationConfigProperty where
  toResourceProperties CapacityReservationConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::EndpointConfig.CapacityReservationConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CapacityReservationPreference"
                              Prelude.<$> capacityReservationPreference,
                            (JSON..=) "MlReservationArn" Prelude.<$> mlReservationArn])}
instance JSON.ToJSON CapacityReservationConfigProperty where
  toJSON CapacityReservationConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CapacityReservationPreference"
                 Prelude.<$> capacityReservationPreference,
               (JSON..=) "MlReservationArn" Prelude.<$> mlReservationArn]))
instance Property "CapacityReservationPreference" CapacityReservationConfigProperty where
  type PropertyType "CapacityReservationPreference" CapacityReservationConfigProperty = Value Prelude.Text
  set newValue CapacityReservationConfigProperty {..}
    = CapacityReservationConfigProperty
        {capacityReservationPreference = Prelude.pure newValue, ..}
instance Property "MlReservationArn" CapacityReservationConfigProperty where
  type PropertyType "MlReservationArn" CapacityReservationConfigProperty = Value Prelude.Text
  set newValue CapacityReservationConfigProperty {..}
    = CapacityReservationConfigProperty
        {mlReservationArn = Prelude.pure newValue, ..}