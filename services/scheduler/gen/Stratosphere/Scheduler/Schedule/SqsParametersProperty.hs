module Stratosphere.Scheduler.Schedule.SqsParametersProperty (
        SqsParametersProperty(..), mkSqsParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SqsParametersProperty
  = SqsParametersProperty {messageGroupId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSqsParametersProperty :: SqsParametersProperty
mkSqsParametersProperty
  = SqsParametersProperty {messageGroupId = Prelude.Nothing}
instance ToResourceProperties SqsParametersProperty where
  toResourceProperties SqsParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Scheduler::Schedule.SqsParameters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MessageGroupId" Prelude.<$> messageGroupId])}
instance JSON.ToJSON SqsParametersProperty where
  toJSON SqsParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MessageGroupId" Prelude.<$> messageGroupId]))
instance Property "MessageGroupId" SqsParametersProperty where
  type PropertyType "MessageGroupId" SqsParametersProperty = Value Prelude.Text
  set newValue SqsParametersProperty {}
    = SqsParametersProperty
        {messageGroupId = Prelude.pure newValue, ..}