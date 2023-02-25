module Stratosphere.ConnectCampaigns.Campaign.AnswerMachineDetectionConfigProperty (
        AnswerMachineDetectionConfigProperty(..),
        mkAnswerMachineDetectionConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AnswerMachineDetectionConfigProperty
  = AnswerMachineDetectionConfigProperty {enableAnswerMachineDetection :: (Value Prelude.Bool)}
mkAnswerMachineDetectionConfigProperty ::
  Value Prelude.Bool -> AnswerMachineDetectionConfigProperty
mkAnswerMachineDetectionConfigProperty enableAnswerMachineDetection
  = AnswerMachineDetectionConfigProperty
      {enableAnswerMachineDetection = enableAnswerMachineDetection}
instance ToResourceProperties AnswerMachineDetectionConfigProperty where
  toResourceProperties AnswerMachineDetectionConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::ConnectCampaigns::Campaign.AnswerMachineDetectionConfig",
         properties = ["EnableAnswerMachineDetection"
                         JSON..= enableAnswerMachineDetection]}
instance JSON.ToJSON AnswerMachineDetectionConfigProperty where
  toJSON AnswerMachineDetectionConfigProperty {..}
    = JSON.object
        ["EnableAnswerMachineDetection"
           JSON..= enableAnswerMachineDetection]
instance Property "EnableAnswerMachineDetection" AnswerMachineDetectionConfigProperty where
  type PropertyType "EnableAnswerMachineDetection" AnswerMachineDetectionConfigProperty = Value Prelude.Bool
  set newValue AnswerMachineDetectionConfigProperty {}
    = AnswerMachineDetectionConfigProperty
        {enableAnswerMachineDetection = newValue, ..}