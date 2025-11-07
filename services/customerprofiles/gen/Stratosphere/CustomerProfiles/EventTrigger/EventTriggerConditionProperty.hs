module Stratosphere.CustomerProfiles.EventTrigger.EventTriggerConditionProperty (
        module Exports, EventTriggerConditionProperty(..),
        mkEventTriggerConditionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CustomerProfiles.EventTrigger.EventTriggerDimensionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EventTriggerConditionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-eventtrigger-eventtriggercondition.html>
    EventTriggerConditionProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-eventtrigger-eventtriggercondition.html#cfn-customerprofiles-eventtrigger-eventtriggercondition-eventtriggerdimensions>
                                   eventTriggerDimensions :: [EventTriggerDimensionProperty],
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-eventtrigger-eventtriggercondition.html#cfn-customerprofiles-eventtrigger-eventtriggercondition-logicaloperator>
                                   logicalOperator :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEventTriggerConditionProperty ::
  [EventTriggerDimensionProperty]
  -> Value Prelude.Text -> EventTriggerConditionProperty
mkEventTriggerConditionProperty
  eventTriggerDimensions
  logicalOperator
  = EventTriggerConditionProperty
      {haddock_workaround_ = (),
       eventTriggerDimensions = eventTriggerDimensions,
       logicalOperator = logicalOperator}
instance ToResourceProperties EventTriggerConditionProperty where
  toResourceProperties EventTriggerConditionProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::EventTrigger.EventTriggerCondition",
         supportsTags = Prelude.False,
         properties = ["EventTriggerDimensions"
                         JSON..= eventTriggerDimensions,
                       "LogicalOperator" JSON..= logicalOperator]}
instance JSON.ToJSON EventTriggerConditionProperty where
  toJSON EventTriggerConditionProperty {..}
    = JSON.object
        ["EventTriggerDimensions" JSON..= eventTriggerDimensions,
         "LogicalOperator" JSON..= logicalOperator]
instance Property "EventTriggerDimensions" EventTriggerConditionProperty where
  type PropertyType "EventTriggerDimensions" EventTriggerConditionProperty = [EventTriggerDimensionProperty]
  set newValue EventTriggerConditionProperty {..}
    = EventTriggerConditionProperty
        {eventTriggerDimensions = newValue, ..}
instance Property "LogicalOperator" EventTriggerConditionProperty where
  type PropertyType "LogicalOperator" EventTriggerConditionProperty = Value Prelude.Text
  set newValue EventTriggerConditionProperty {..}
    = EventTriggerConditionProperty {logicalOperator = newValue, ..}