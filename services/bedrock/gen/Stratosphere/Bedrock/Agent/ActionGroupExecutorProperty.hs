module Stratosphere.Bedrock.Agent.ActionGroupExecutorProperty (
        ActionGroupExecutorProperty(..), mkActionGroupExecutorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ActionGroupExecutorProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-agent-actiongroupexecutor.html>
    ActionGroupExecutorProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-agent-actiongroupexecutor.html#cfn-bedrock-agent-actiongroupexecutor-customcontrol>
                                 customControl :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-agent-actiongroupexecutor.html#cfn-bedrock-agent-actiongroupexecutor-lambda>
                                 lambda :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkActionGroupExecutorProperty :: ActionGroupExecutorProperty
mkActionGroupExecutorProperty
  = ActionGroupExecutorProperty
      {haddock_workaround_ = (), customControl = Prelude.Nothing,
       lambda = Prelude.Nothing}
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