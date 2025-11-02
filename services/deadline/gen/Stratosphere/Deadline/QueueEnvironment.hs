module Stratosphere.Deadline.QueueEnvironment (
        QueueEnvironment(..), mkQueueEnvironment
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data QueueEnvironment
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-deadline-queueenvironment.html>
    QueueEnvironment {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-deadline-queueenvironment.html#cfn-deadline-queueenvironment-farmid>
                      farmId :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-deadline-queueenvironment.html#cfn-deadline-queueenvironment-priority>
                      priority :: (Value Prelude.Integer),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-deadline-queueenvironment.html#cfn-deadline-queueenvironment-queueid>
                      queueId :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-deadline-queueenvironment.html#cfn-deadline-queueenvironment-template>
                      template :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-deadline-queueenvironment.html#cfn-deadline-queueenvironment-templatetype>
                      templateType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkQueueEnvironment ::
  Value Prelude.Text
  -> Value Prelude.Integer
     -> Value Prelude.Text
        -> Value Prelude.Text -> Value Prelude.Text -> QueueEnvironment
mkQueueEnvironment farmId priority queueId template templateType
  = QueueEnvironment
      {haddock_workaround_ = (), farmId = farmId, priority = priority,
       queueId = queueId, template = template,
       templateType = templateType}
instance ToResourceProperties QueueEnvironment where
  toResourceProperties QueueEnvironment {..}
    = ResourceProperties
        {awsType = "AWS::Deadline::QueueEnvironment",
         supportsTags = Prelude.False,
         properties = ["FarmId" JSON..= farmId, "Priority" JSON..= priority,
                       "QueueId" JSON..= queueId, "Template" JSON..= template,
                       "TemplateType" JSON..= templateType]}
instance JSON.ToJSON QueueEnvironment where
  toJSON QueueEnvironment {..}
    = JSON.object
        ["FarmId" JSON..= farmId, "Priority" JSON..= priority,
         "QueueId" JSON..= queueId, "Template" JSON..= template,
         "TemplateType" JSON..= templateType]
instance Property "FarmId" QueueEnvironment where
  type PropertyType "FarmId" QueueEnvironment = Value Prelude.Text
  set newValue QueueEnvironment {..}
    = QueueEnvironment {farmId = newValue, ..}
instance Property "Priority" QueueEnvironment where
  type PropertyType "Priority" QueueEnvironment = Value Prelude.Integer
  set newValue QueueEnvironment {..}
    = QueueEnvironment {priority = newValue, ..}
instance Property "QueueId" QueueEnvironment where
  type PropertyType "QueueId" QueueEnvironment = Value Prelude.Text
  set newValue QueueEnvironment {..}
    = QueueEnvironment {queueId = newValue, ..}
instance Property "Template" QueueEnvironment where
  type PropertyType "Template" QueueEnvironment = Value Prelude.Text
  set newValue QueueEnvironment {..}
    = QueueEnvironment {template = newValue, ..}
instance Property "TemplateType" QueueEnvironment where
  type PropertyType "TemplateType" QueueEnvironment = Value Prelude.Text
  set newValue QueueEnvironment {..}
    = QueueEnvironment {templateType = newValue, ..}