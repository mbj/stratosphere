module Stratosphere.CloudTrail.Trail.EventSelectorProperty (
        module Exports, EventSelectorProperty(..), mkEventSelectorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudTrail.Trail.DataResourceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EventSelectorProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-trail-eventselector.html>
    EventSelectorProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-trail-eventselector.html#cfn-cloudtrail-trail-eventselector-dataresources>
                           dataResources :: (Prelude.Maybe [DataResourceProperty]),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-trail-eventselector.html#cfn-cloudtrail-trail-eventselector-excludemanagementeventsources>
                           excludeManagementEventSources :: (Prelude.Maybe (ValueList Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-trail-eventselector.html#cfn-cloudtrail-trail-eventselector-includemanagementevents>
                           includeManagementEvents :: (Prelude.Maybe (Value Prelude.Bool)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-trail-eventselector.html#cfn-cloudtrail-trail-eventselector-readwritetype>
                           readWriteType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEventSelectorProperty :: EventSelectorProperty
mkEventSelectorProperty
  = EventSelectorProperty
      {haddock_workaround_ = (), dataResources = Prelude.Nothing,
       excludeManagementEventSources = Prelude.Nothing,
       includeManagementEvents = Prelude.Nothing,
       readWriteType = Prelude.Nothing}
instance ToResourceProperties EventSelectorProperty where
  toResourceProperties EventSelectorProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudTrail::Trail.EventSelector",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DataResources" Prelude.<$> dataResources,
                            (JSON..=) "ExcludeManagementEventSources"
                              Prelude.<$> excludeManagementEventSources,
                            (JSON..=) "IncludeManagementEvents"
                              Prelude.<$> includeManagementEvents,
                            (JSON..=) "ReadWriteType" Prelude.<$> readWriteType])}
instance JSON.ToJSON EventSelectorProperty where
  toJSON EventSelectorProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DataResources" Prelude.<$> dataResources,
               (JSON..=) "ExcludeManagementEventSources"
                 Prelude.<$> excludeManagementEventSources,
               (JSON..=) "IncludeManagementEvents"
                 Prelude.<$> includeManagementEvents,
               (JSON..=) "ReadWriteType" Prelude.<$> readWriteType]))
instance Property "DataResources" EventSelectorProperty where
  type PropertyType "DataResources" EventSelectorProperty = [DataResourceProperty]
  set newValue EventSelectorProperty {..}
    = EventSelectorProperty {dataResources = Prelude.pure newValue, ..}
instance Property "ExcludeManagementEventSources" EventSelectorProperty where
  type PropertyType "ExcludeManagementEventSources" EventSelectorProperty = ValueList Prelude.Text
  set newValue EventSelectorProperty {..}
    = EventSelectorProperty
        {excludeManagementEventSources = Prelude.pure newValue, ..}
instance Property "IncludeManagementEvents" EventSelectorProperty where
  type PropertyType "IncludeManagementEvents" EventSelectorProperty = Value Prelude.Bool
  set newValue EventSelectorProperty {..}
    = EventSelectorProperty
        {includeManagementEvents = Prelude.pure newValue, ..}
instance Property "ReadWriteType" EventSelectorProperty where
  type PropertyType "ReadWriteType" EventSelectorProperty = Value Prelude.Text
  set newValue EventSelectorProperty {..}
    = EventSelectorProperty {readWriteType = Prelude.pure newValue, ..}