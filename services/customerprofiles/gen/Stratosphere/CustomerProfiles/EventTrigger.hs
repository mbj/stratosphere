module Stratosphere.CustomerProfiles.EventTrigger (
        module Exports, EventTrigger(..), mkEventTrigger
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CustomerProfiles.EventTrigger.EventTriggerConditionProperty as Exports
import {-# SOURCE #-} Stratosphere.CustomerProfiles.EventTrigger.EventTriggerLimitsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data EventTrigger
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-customerprofiles-eventtrigger.html>
    EventTrigger {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-customerprofiles-eventtrigger.html#cfn-customerprofiles-eventtrigger-description>
                  description :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-customerprofiles-eventtrigger.html#cfn-customerprofiles-eventtrigger-domainname>
                  domainName :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-customerprofiles-eventtrigger.html#cfn-customerprofiles-eventtrigger-eventtriggerconditions>
                  eventTriggerConditions :: [EventTriggerConditionProperty],
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-customerprofiles-eventtrigger.html#cfn-customerprofiles-eventtrigger-eventtriggerlimits>
                  eventTriggerLimits :: (Prelude.Maybe EventTriggerLimitsProperty),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-customerprofiles-eventtrigger.html#cfn-customerprofiles-eventtrigger-eventtriggername>
                  eventTriggerName :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-customerprofiles-eventtrigger.html#cfn-customerprofiles-eventtrigger-objecttypename>
                  objectTypeName :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-customerprofiles-eventtrigger.html#cfn-customerprofiles-eventtrigger-segmentfilter>
                  segmentFilter :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-customerprofiles-eventtrigger.html#cfn-customerprofiles-eventtrigger-tags>
                  tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEventTrigger ::
  Value Prelude.Text
  -> [EventTriggerConditionProperty]
     -> Value Prelude.Text -> Value Prelude.Text -> EventTrigger
mkEventTrigger
  domainName
  eventTriggerConditions
  eventTriggerName
  objectTypeName
  = EventTrigger
      {haddock_workaround_ = (), domainName = domainName,
       eventTriggerConditions = eventTriggerConditions,
       eventTriggerName = eventTriggerName,
       objectTypeName = objectTypeName, description = Prelude.Nothing,
       eventTriggerLimits = Prelude.Nothing,
       segmentFilter = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties EventTrigger where
  toResourceProperties EventTrigger {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::EventTrigger",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DomainName" JSON..= domainName,
                            "EventTriggerConditions" JSON..= eventTriggerConditions,
                            "EventTriggerName" JSON..= eventTriggerName,
                            "ObjectTypeName" JSON..= objectTypeName]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "EventTriggerLimits" Prelude.<$> eventTriggerLimits,
                               (JSON..=) "SegmentFilter" Prelude.<$> segmentFilter,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON EventTrigger where
  toJSON EventTrigger {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DomainName" JSON..= domainName,
               "EventTriggerConditions" JSON..= eventTriggerConditions,
               "EventTriggerName" JSON..= eventTriggerName,
               "ObjectTypeName" JSON..= objectTypeName]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "EventTriggerLimits" Prelude.<$> eventTriggerLimits,
                  (JSON..=) "SegmentFilter" Prelude.<$> segmentFilter,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" EventTrigger where
  type PropertyType "Description" EventTrigger = Value Prelude.Text
  set newValue EventTrigger {..}
    = EventTrigger {description = Prelude.pure newValue, ..}
instance Property "DomainName" EventTrigger where
  type PropertyType "DomainName" EventTrigger = Value Prelude.Text
  set newValue EventTrigger {..}
    = EventTrigger {domainName = newValue, ..}
instance Property "EventTriggerConditions" EventTrigger where
  type PropertyType "EventTriggerConditions" EventTrigger = [EventTriggerConditionProperty]
  set newValue EventTrigger {..}
    = EventTrigger {eventTriggerConditions = newValue, ..}
instance Property "EventTriggerLimits" EventTrigger where
  type PropertyType "EventTriggerLimits" EventTrigger = EventTriggerLimitsProperty
  set newValue EventTrigger {..}
    = EventTrigger {eventTriggerLimits = Prelude.pure newValue, ..}
instance Property "EventTriggerName" EventTrigger where
  type PropertyType "EventTriggerName" EventTrigger = Value Prelude.Text
  set newValue EventTrigger {..}
    = EventTrigger {eventTriggerName = newValue, ..}
instance Property "ObjectTypeName" EventTrigger where
  type PropertyType "ObjectTypeName" EventTrigger = Value Prelude.Text
  set newValue EventTrigger {..}
    = EventTrigger {objectTypeName = newValue, ..}
instance Property "SegmentFilter" EventTrigger where
  type PropertyType "SegmentFilter" EventTrigger = Value Prelude.Text
  set newValue EventTrigger {..}
    = EventTrigger {segmentFilter = Prelude.pure newValue, ..}
instance Property "Tags" EventTrigger where
  type PropertyType "Tags" EventTrigger = [Tag]
  set newValue EventTrigger {..}
    = EventTrigger {tags = Prelude.pure newValue, ..}