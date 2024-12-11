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
  = AnswerMachineDetectionConfigProperty {awaitAnswerMachinePrompt :: (Prelude.Maybe (Value Prelude.Bool)),
                                          enableAnswerMachineDetection :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAnswerMachineDetectionConfigProperty ::
  Value Prelude.Bool -> AnswerMachineDetectionConfigProperty
mkAnswerMachineDetectionConfigProperty enableAnswerMachineDetection
  = AnswerMachineDetectionConfigProperty
      {enableAnswerMachineDetection = enableAnswerMachineDetection,
       awaitAnswerMachinePrompt = Prelude.Nothing}
instance ToResourceProperties AnswerMachineDetectionConfigProperty where
  toResourceProperties AnswerMachineDetectionConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::ConnectCampaigns::Campaign.AnswerMachineDetectionConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EnableAnswerMachineDetection"
                              JSON..= enableAnswerMachineDetection]
                           (Prelude.catMaybes
                              [(JSON..=) "AwaitAnswerMachinePrompt"
                                 Prelude.<$> awaitAnswerMachinePrompt]))}
instance JSON.ToJSON AnswerMachineDetectionConfigProperty where
  toJSON AnswerMachineDetectionConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EnableAnswerMachineDetection"
                 JSON..= enableAnswerMachineDetection]
              (Prelude.catMaybes
                 [(JSON..=) "AwaitAnswerMachinePrompt"
                    Prelude.<$> awaitAnswerMachinePrompt])))
instance Property "AwaitAnswerMachinePrompt" AnswerMachineDetectionConfigProperty where
  type PropertyType "AwaitAnswerMachinePrompt" AnswerMachineDetectionConfigProperty = Value Prelude.Bool
  set newValue AnswerMachineDetectionConfigProperty {..}
    = AnswerMachineDetectionConfigProperty
        {awaitAnswerMachinePrompt = Prelude.pure newValue, ..}
instance Property "EnableAnswerMachineDetection" AnswerMachineDetectionConfigProperty where
  type PropertyType "EnableAnswerMachineDetection" AnswerMachineDetectionConfigProperty = Value Prelude.Bool
  set newValue AnswerMachineDetectionConfigProperty {..}
    = AnswerMachineDetectionConfigProperty
        {enableAnswerMachineDetection = newValue, ..}