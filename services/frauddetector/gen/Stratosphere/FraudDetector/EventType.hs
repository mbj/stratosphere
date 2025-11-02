module Stratosphere.FraudDetector.EventType (
        module Exports, EventType(..), mkEventType
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.FraudDetector.EventType.EntityTypeProperty as Exports
import {-# SOURCE #-} Stratosphere.FraudDetector.EventType.EventVariableProperty as Exports
import {-# SOURCE #-} Stratosphere.FraudDetector.EventType.LabelProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data EventType
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-frauddetector-eventtype.html>
    EventType {haddock_workaround_ :: (),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-frauddetector-eventtype.html#cfn-frauddetector-eventtype-description>
               description :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-frauddetector-eventtype.html#cfn-frauddetector-eventtype-entitytypes>
               entityTypes :: [EntityTypeProperty],
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-frauddetector-eventtype.html#cfn-frauddetector-eventtype-eventvariables>
               eventVariables :: [EventVariableProperty],
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-frauddetector-eventtype.html#cfn-frauddetector-eventtype-labels>
               labels :: [LabelProperty],
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-frauddetector-eventtype.html#cfn-frauddetector-eventtype-name>
               name :: (Value Prelude.Text),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-frauddetector-eventtype.html#cfn-frauddetector-eventtype-tags>
               tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEventType ::
  [EntityTypeProperty]
  -> [EventVariableProperty]
     -> [LabelProperty] -> Value Prelude.Text -> EventType
mkEventType entityTypes eventVariables labels name
  = EventType
      {haddock_workaround_ = (), entityTypes = entityTypes,
       eventVariables = eventVariables, labels = labels, name = name,
       description = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties EventType where
  toResourceProperties EventType {..}
    = ResourceProperties
        {awsType = "AWS::FraudDetector::EventType",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EntityTypes" JSON..= entityTypes,
                            "EventVariables" JSON..= eventVariables, "Labels" JSON..= labels,
                            "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON EventType where
  toJSON EventType {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EntityTypes" JSON..= entityTypes,
               "EventVariables" JSON..= eventVariables, "Labels" JSON..= labels,
               "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" EventType where
  type PropertyType "Description" EventType = Value Prelude.Text
  set newValue EventType {..}
    = EventType {description = Prelude.pure newValue, ..}
instance Property "EntityTypes" EventType where
  type PropertyType "EntityTypes" EventType = [EntityTypeProperty]
  set newValue EventType {..}
    = EventType {entityTypes = newValue, ..}
instance Property "EventVariables" EventType where
  type PropertyType "EventVariables" EventType = [EventVariableProperty]
  set newValue EventType {..}
    = EventType {eventVariables = newValue, ..}
instance Property "Labels" EventType where
  type PropertyType "Labels" EventType = [LabelProperty]
  set newValue EventType {..} = EventType {labels = newValue, ..}
instance Property "Name" EventType where
  type PropertyType "Name" EventType = Value Prelude.Text
  set newValue EventType {..} = EventType {name = newValue, ..}
instance Property "Tags" EventType where
  type PropertyType "Tags" EventType = [Tag]
  set newValue EventType {..}
    = EventType {tags = Prelude.pure newValue, ..}