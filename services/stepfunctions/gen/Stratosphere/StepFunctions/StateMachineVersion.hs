module Stratosphere.StepFunctions.StateMachineVersion (
        StateMachineVersion(..), mkStateMachineVersion
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StateMachineVersion
  = StateMachineVersion {description :: (Prelude.Maybe (Value Prelude.Text)),
                         stateMachineArn :: (Value Prelude.Text),
                         stateMachineRevisionId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStateMachineVersion :: Value Prelude.Text -> StateMachineVersion
mkStateMachineVersion stateMachineArn
  = StateMachineVersion
      {stateMachineArn = stateMachineArn, description = Prelude.Nothing,
       stateMachineRevisionId = Prelude.Nothing}
instance ToResourceProperties StateMachineVersion where
  toResourceProperties StateMachineVersion {..}
    = ResourceProperties
        {awsType = "AWS::StepFunctions::StateMachineVersion",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["StateMachineArn" JSON..= stateMachineArn]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "StateMachineRevisionId"
                                 Prelude.<$> stateMachineRevisionId]))}
instance JSON.ToJSON StateMachineVersion where
  toJSON StateMachineVersion {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["StateMachineArn" JSON..= stateMachineArn]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "StateMachineRevisionId"
                    Prelude.<$> stateMachineRevisionId])))
instance Property "Description" StateMachineVersion where
  type PropertyType "Description" StateMachineVersion = Value Prelude.Text
  set newValue StateMachineVersion {..}
    = StateMachineVersion {description = Prelude.pure newValue, ..}
instance Property "StateMachineArn" StateMachineVersion where
  type PropertyType "StateMachineArn" StateMachineVersion = Value Prelude.Text
  set newValue StateMachineVersion {..}
    = StateMachineVersion {stateMachineArn = newValue, ..}
instance Property "StateMachineRevisionId" StateMachineVersion where
  type PropertyType "StateMachineRevisionId" StateMachineVersion = Value Prelude.Text
  set newValue StateMachineVersion {..}
    = StateMachineVersion
        {stateMachineRevisionId = Prelude.pure newValue, ..}