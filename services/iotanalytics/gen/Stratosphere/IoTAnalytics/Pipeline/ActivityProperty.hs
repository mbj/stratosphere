module Stratosphere.IoTAnalytics.Pipeline.ActivityProperty (
        module Exports, ActivityProperty(..), mkActivityProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTAnalytics.Pipeline.AddAttributesProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTAnalytics.Pipeline.ChannelProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTAnalytics.Pipeline.DatastoreProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTAnalytics.Pipeline.DeviceRegistryEnrichProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTAnalytics.Pipeline.DeviceShadowEnrichProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTAnalytics.Pipeline.FilterProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTAnalytics.Pipeline.LambdaProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTAnalytics.Pipeline.MathProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTAnalytics.Pipeline.RemoveAttributesProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTAnalytics.Pipeline.SelectAttributesProperty as Exports
import Stratosphere.ResourceProperties
data ActivityProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-activity.html>
    ActivityProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-activity.html#cfn-iotanalytics-pipeline-activity-addattributes>
                      addAttributes :: (Prelude.Maybe AddAttributesProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-activity.html#cfn-iotanalytics-pipeline-activity-channel>
                      channel :: (Prelude.Maybe ChannelProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-activity.html#cfn-iotanalytics-pipeline-activity-datastore>
                      datastore :: (Prelude.Maybe DatastoreProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-activity.html#cfn-iotanalytics-pipeline-activity-deviceregistryenrich>
                      deviceRegistryEnrich :: (Prelude.Maybe DeviceRegistryEnrichProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-activity.html#cfn-iotanalytics-pipeline-activity-deviceshadowenrich>
                      deviceShadowEnrich :: (Prelude.Maybe DeviceShadowEnrichProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-activity.html#cfn-iotanalytics-pipeline-activity-filter>
                      filter :: (Prelude.Maybe FilterProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-activity.html#cfn-iotanalytics-pipeline-activity-lambda>
                      lambda :: (Prelude.Maybe LambdaProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-activity.html#cfn-iotanalytics-pipeline-activity-math>
                      math :: (Prelude.Maybe MathProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-activity.html#cfn-iotanalytics-pipeline-activity-removeattributes>
                      removeAttributes :: (Prelude.Maybe RemoveAttributesProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-activity.html#cfn-iotanalytics-pipeline-activity-selectattributes>
                      selectAttributes :: (Prelude.Maybe SelectAttributesProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkActivityProperty :: ActivityProperty
mkActivityProperty
  = ActivityProperty
      {haddock_workaround_ = (), addAttributes = Prelude.Nothing,
       channel = Prelude.Nothing, datastore = Prelude.Nothing,
       deviceRegistryEnrich = Prelude.Nothing,
       deviceShadowEnrich = Prelude.Nothing, filter = Prelude.Nothing,
       lambda = Prelude.Nothing, math = Prelude.Nothing,
       removeAttributes = Prelude.Nothing,
       selectAttributes = Prelude.Nothing}
instance ToResourceProperties ActivityProperty where
  toResourceProperties ActivityProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTAnalytics::Pipeline.Activity",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AddAttributes" Prelude.<$> addAttributes,
                            (JSON..=) "Channel" Prelude.<$> channel,
                            (JSON..=) "Datastore" Prelude.<$> datastore,
                            (JSON..=) "DeviceRegistryEnrich" Prelude.<$> deviceRegistryEnrich,
                            (JSON..=) "DeviceShadowEnrich" Prelude.<$> deviceShadowEnrich,
                            (JSON..=) "Filter" Prelude.<$> filter,
                            (JSON..=) "Lambda" Prelude.<$> lambda,
                            (JSON..=) "Math" Prelude.<$> math,
                            (JSON..=) "RemoveAttributes" Prelude.<$> removeAttributes,
                            (JSON..=) "SelectAttributes" Prelude.<$> selectAttributes])}
instance JSON.ToJSON ActivityProperty where
  toJSON ActivityProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AddAttributes" Prelude.<$> addAttributes,
               (JSON..=) "Channel" Prelude.<$> channel,
               (JSON..=) "Datastore" Prelude.<$> datastore,
               (JSON..=) "DeviceRegistryEnrich" Prelude.<$> deviceRegistryEnrich,
               (JSON..=) "DeviceShadowEnrich" Prelude.<$> deviceShadowEnrich,
               (JSON..=) "Filter" Prelude.<$> filter,
               (JSON..=) "Lambda" Prelude.<$> lambda,
               (JSON..=) "Math" Prelude.<$> math,
               (JSON..=) "RemoveAttributes" Prelude.<$> removeAttributes,
               (JSON..=) "SelectAttributes" Prelude.<$> selectAttributes]))
instance Property "AddAttributes" ActivityProperty where
  type PropertyType "AddAttributes" ActivityProperty = AddAttributesProperty
  set newValue ActivityProperty {..}
    = ActivityProperty {addAttributes = Prelude.pure newValue, ..}
instance Property "Channel" ActivityProperty where
  type PropertyType "Channel" ActivityProperty = ChannelProperty
  set newValue ActivityProperty {..}
    = ActivityProperty {channel = Prelude.pure newValue, ..}
instance Property "Datastore" ActivityProperty where
  type PropertyType "Datastore" ActivityProperty = DatastoreProperty
  set newValue ActivityProperty {..}
    = ActivityProperty {datastore = Prelude.pure newValue, ..}
instance Property "DeviceRegistryEnrich" ActivityProperty where
  type PropertyType "DeviceRegistryEnrich" ActivityProperty = DeviceRegistryEnrichProperty
  set newValue ActivityProperty {..}
    = ActivityProperty
        {deviceRegistryEnrich = Prelude.pure newValue, ..}
instance Property "DeviceShadowEnrich" ActivityProperty where
  type PropertyType "DeviceShadowEnrich" ActivityProperty = DeviceShadowEnrichProperty
  set newValue ActivityProperty {..}
    = ActivityProperty {deviceShadowEnrich = Prelude.pure newValue, ..}
instance Property "Filter" ActivityProperty where
  type PropertyType "Filter" ActivityProperty = FilterProperty
  set newValue ActivityProperty {..}
    = ActivityProperty {filter = Prelude.pure newValue, ..}
instance Property "Lambda" ActivityProperty where
  type PropertyType "Lambda" ActivityProperty = LambdaProperty
  set newValue ActivityProperty {..}
    = ActivityProperty {lambda = Prelude.pure newValue, ..}
instance Property "Math" ActivityProperty where
  type PropertyType "Math" ActivityProperty = MathProperty
  set newValue ActivityProperty {..}
    = ActivityProperty {math = Prelude.pure newValue, ..}
instance Property "RemoveAttributes" ActivityProperty where
  type PropertyType "RemoveAttributes" ActivityProperty = RemoveAttributesProperty
  set newValue ActivityProperty {..}
    = ActivityProperty {removeAttributes = Prelude.pure newValue, ..}
instance Property "SelectAttributes" ActivityProperty where
  type PropertyType "SelectAttributes" ActivityProperty = SelectAttributesProperty
  set newValue ActivityProperty {..}
    = ActivityProperty {selectAttributes = Prelude.pure newValue, ..}