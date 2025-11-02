module Stratosphere.Evidently.Launch.ExecutionStatusObjectProperty (
        ExecutionStatusObjectProperty(..), mkExecutionStatusObjectProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ExecutionStatusObjectProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evidently-launch-executionstatusobject.html>
    ExecutionStatusObjectProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evidently-launch-executionstatusobject.html#cfn-evidently-launch-executionstatusobject-desiredstate>
                                   desiredState :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evidently-launch-executionstatusobject.html#cfn-evidently-launch-executionstatusobject-reason>
                                   reason :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evidently-launch-executionstatusobject.html#cfn-evidently-launch-executionstatusobject-status>
                                   status :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExecutionStatusObjectProperty ::
  Value Prelude.Text -> ExecutionStatusObjectProperty
mkExecutionStatusObjectProperty status
  = ExecutionStatusObjectProperty
      {haddock_workaround_ = (), status = status,
       desiredState = Prelude.Nothing, reason = Prelude.Nothing}
instance ToResourceProperties ExecutionStatusObjectProperty where
  toResourceProperties ExecutionStatusObjectProperty {..}
    = ResourceProperties
        {awsType = "AWS::Evidently::Launch.ExecutionStatusObject",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Status" JSON..= status]
                           (Prelude.catMaybes
                              [(JSON..=) "DesiredState" Prelude.<$> desiredState,
                               (JSON..=) "Reason" Prelude.<$> reason]))}
instance JSON.ToJSON ExecutionStatusObjectProperty where
  toJSON ExecutionStatusObjectProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Status" JSON..= status]
              (Prelude.catMaybes
                 [(JSON..=) "DesiredState" Prelude.<$> desiredState,
                  (JSON..=) "Reason" Prelude.<$> reason])))
instance Property "DesiredState" ExecutionStatusObjectProperty where
  type PropertyType "DesiredState" ExecutionStatusObjectProperty = Value Prelude.Text
  set newValue ExecutionStatusObjectProperty {..}
    = ExecutionStatusObjectProperty
        {desiredState = Prelude.pure newValue, ..}
instance Property "Reason" ExecutionStatusObjectProperty where
  type PropertyType "Reason" ExecutionStatusObjectProperty = Value Prelude.Text
  set newValue ExecutionStatusObjectProperty {..}
    = ExecutionStatusObjectProperty
        {reason = Prelude.pure newValue, ..}
instance Property "Status" ExecutionStatusObjectProperty where
  type PropertyType "Status" ExecutionStatusObjectProperty = Value Prelude.Text
  set newValue ExecutionStatusObjectProperty {..}
    = ExecutionStatusObjectProperty {status = newValue, ..}