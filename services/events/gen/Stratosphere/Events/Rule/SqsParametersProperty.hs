module Stratosphere.Events.Rule.SqsParametersProperty (
        SqsParametersProperty(..), mkSqsParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SqsParametersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-sqsparameters.html>
    SqsParametersProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-sqsparameters.html#cfn-events-rule-sqsparameters-messagegroupid>
                           messageGroupId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSqsParametersProperty ::
  Value Prelude.Text -> SqsParametersProperty
mkSqsParametersProperty messageGroupId
  = SqsParametersProperty
      {haddock_workaround_ = (), messageGroupId = messageGroupId}
instance ToResourceProperties SqsParametersProperty where
  toResourceProperties SqsParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Events::Rule.SqsParameters",
         supportsTags = Prelude.False,
         properties = ["MessageGroupId" JSON..= messageGroupId]}
instance JSON.ToJSON SqsParametersProperty where
  toJSON SqsParametersProperty {..}
    = JSON.object ["MessageGroupId" JSON..= messageGroupId]
instance Property "MessageGroupId" SqsParametersProperty where
  type PropertyType "MessageGroupId" SqsParametersProperty = Value Prelude.Text
  set newValue SqsParametersProperty {..}
    = SqsParametersProperty {messageGroupId = newValue, ..}