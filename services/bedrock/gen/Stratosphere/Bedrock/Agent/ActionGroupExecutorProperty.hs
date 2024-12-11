module Stratosphere.Bedrock.Agent.ActionGroupExecutorProperty (
        ActionGroupExecutorProperty(..), mkActionGroupExecutorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ActionGroupExecutorProperty
  = ActionGroupExecutorProperty {customControl :: (Prelude.Maybe (Value Prelude.Text)),
                                 lambda :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkActionGroupExecutorProperty :: ActionGroupExecutorProperty
mkActionGroupExecutorProperty
  = ActionGroupExecutorProperty
      {customControl = Prelude.Nothing, lambda = Prelude.Nothing}
instance ToResourceProperties ActionGroupExecutorProperty where
  toResourceProperties ActionGroupExecutorProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Agent.ActionGroupExecutor",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CustomControl" Prelude.<$> customControl,
                            (JSON..=) "Lambda" Prelude.<$> lambda])}
instance JSON.ToJSON ActionGroupExecutorProperty where
  toJSON ActionGroupExecutorProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CustomControl" Prelude.<$> customControl,
               (JSON..=) "Lambda" Prelude.<$> lambda]))
instance Property "CustomControl" ActionGroupExecutorProperty where
  type PropertyType "CustomControl" ActionGroupExecutorProperty = Value Prelude.Text
  set newValue ActionGroupExecutorProperty {..}
    = ActionGroupExecutorProperty
        {customControl = Prelude.pure newValue, ..}
instance Property "Lambda" ActionGroupExecutorProperty where
  type PropertyType "Lambda" ActionGroupExecutorProperty = Value Prelude.Text
  set newValue ActionGroupExecutorProperty {..}
    = ActionGroupExecutorProperty {lambda = Prelude.pure newValue, ..}