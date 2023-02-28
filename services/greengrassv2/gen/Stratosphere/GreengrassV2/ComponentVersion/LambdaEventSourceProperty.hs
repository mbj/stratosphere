module Stratosphere.GreengrassV2.ComponentVersion.LambdaEventSourceProperty (
        LambdaEventSourceProperty(..), mkLambdaEventSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LambdaEventSourceProperty
  = LambdaEventSourceProperty {topic :: (Prelude.Maybe (Value Prelude.Text)),
                               type' :: (Prelude.Maybe (Value Prelude.Text))}
mkLambdaEventSourceProperty :: LambdaEventSourceProperty
mkLambdaEventSourceProperty
  = LambdaEventSourceProperty
      {topic = Prelude.Nothing, type' = Prelude.Nothing}
instance ToResourceProperties LambdaEventSourceProperty where
  toResourceProperties LambdaEventSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::GreengrassV2::ComponentVersion.LambdaEventSource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Topic" Prelude.<$> topic,
                            (JSON..=) "Type" Prelude.<$> type'])}
instance JSON.ToJSON LambdaEventSourceProperty where
  toJSON LambdaEventSourceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Topic" Prelude.<$> topic,
               (JSON..=) "Type" Prelude.<$> type']))
instance Property "Topic" LambdaEventSourceProperty where
  type PropertyType "Topic" LambdaEventSourceProperty = Value Prelude.Text
  set newValue LambdaEventSourceProperty {..}
    = LambdaEventSourceProperty {topic = Prelude.pure newValue, ..}
instance Property "Type" LambdaEventSourceProperty where
  type PropertyType "Type" LambdaEventSourceProperty = Value Prelude.Text
  set newValue LambdaEventSourceProperty {..}
    = LambdaEventSourceProperty {type' = Prelude.pure newValue, ..}