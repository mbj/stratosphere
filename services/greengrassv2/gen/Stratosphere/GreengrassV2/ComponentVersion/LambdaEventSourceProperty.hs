module Stratosphere.GreengrassV2.ComponentVersion.LambdaEventSourceProperty (
        LambdaEventSourceProperty(..), mkLambdaEventSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LambdaEventSourceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-componentversion-lambdaeventsource.html>
    LambdaEventSourceProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-componentversion-lambdaeventsource.html#cfn-greengrassv2-componentversion-lambdaeventsource-topic>
                               topic :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-componentversion-lambdaeventsource.html#cfn-greengrassv2-componentversion-lambdaeventsource-type>
                               type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLambdaEventSourceProperty :: LambdaEventSourceProperty
mkLambdaEventSourceProperty
  = LambdaEventSourceProperty
      {haddock_workaround_ = (), topic = Prelude.Nothing,
       type' = Prelude.Nothing}
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