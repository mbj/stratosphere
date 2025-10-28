module Stratosphere.Events.Rule.RunCommandTargetProperty (
        RunCommandTargetProperty(..), mkRunCommandTargetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RunCommandTargetProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-runcommandtarget.html>
    RunCommandTargetProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-runcommandtarget.html#cfn-events-rule-runcommandtarget-key>
                              key :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-runcommandtarget.html#cfn-events-rule-runcommandtarget-values>
                              values :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRunCommandTargetProperty ::
  Value Prelude.Text
  -> ValueList Prelude.Text -> RunCommandTargetProperty
mkRunCommandTargetProperty key values
  = RunCommandTargetProperty
      {haddock_workaround_ = (), key = key, values = values}
instance ToResourceProperties RunCommandTargetProperty where
  toResourceProperties RunCommandTargetProperty {..}
    = ResourceProperties
        {awsType = "AWS::Events::Rule.RunCommandTarget",
         supportsTags = Prelude.False,
         properties = ["Key" JSON..= key, "Values" JSON..= values]}
instance JSON.ToJSON RunCommandTargetProperty where
  toJSON RunCommandTargetProperty {..}
    = JSON.object ["Key" JSON..= key, "Values" JSON..= values]
instance Property "Key" RunCommandTargetProperty where
  type PropertyType "Key" RunCommandTargetProperty = Value Prelude.Text
  set newValue RunCommandTargetProperty {..}
    = RunCommandTargetProperty {key = newValue, ..}
instance Property "Values" RunCommandTargetProperty where
  type PropertyType "Values" RunCommandTargetProperty = ValueList Prelude.Text
  set newValue RunCommandTargetProperty {..}
    = RunCommandTargetProperty {values = newValue, ..}