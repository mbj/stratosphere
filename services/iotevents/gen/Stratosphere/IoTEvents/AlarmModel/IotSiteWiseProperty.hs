module Stratosphere.IoTEvents.AlarmModel.IotSiteWiseProperty (
        module Exports, IotSiteWiseProperty(..), mkIotSiteWiseProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTEvents.AlarmModel.AssetPropertyValueProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IotSiteWiseProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-alarmmodel-iotsitewise.html>
    IotSiteWiseProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-alarmmodel-iotsitewise.html#cfn-iotevents-alarmmodel-iotsitewise-assetid>
                         assetId :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-alarmmodel-iotsitewise.html#cfn-iotevents-alarmmodel-iotsitewise-entryid>
                         entryId :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-alarmmodel-iotsitewise.html#cfn-iotevents-alarmmodel-iotsitewise-propertyalias>
                         propertyAlias :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-alarmmodel-iotsitewise.html#cfn-iotevents-alarmmodel-iotsitewise-propertyid>
                         propertyId :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-alarmmodel-iotsitewise.html#cfn-iotevents-alarmmodel-iotsitewise-propertyvalue>
                         propertyValue :: (Prelude.Maybe AssetPropertyValueProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIotSiteWiseProperty :: IotSiteWiseProperty
mkIotSiteWiseProperty
  = IotSiteWiseProperty
      {haddock_workaround_ = (), assetId = Prelude.Nothing,
       entryId = Prelude.Nothing, propertyAlias = Prelude.Nothing,
       propertyId = Prelude.Nothing, propertyValue = Prelude.Nothing}
instance ToResourceProperties IotSiteWiseProperty where
  toResourceProperties IotSiteWiseProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTEvents::AlarmModel.IotSiteWise",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AssetId" Prelude.<$> assetId,
                            (JSON..=) "EntryId" Prelude.<$> entryId,
                            (JSON..=) "PropertyAlias" Prelude.<$> propertyAlias,
                            (JSON..=) "PropertyId" Prelude.<$> propertyId,
                            (JSON..=) "PropertyValue" Prelude.<$> propertyValue])}
instance JSON.ToJSON IotSiteWiseProperty where
  toJSON IotSiteWiseProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AssetId" Prelude.<$> assetId,
               (JSON..=) "EntryId" Prelude.<$> entryId,
               (JSON..=) "PropertyAlias" Prelude.<$> propertyAlias,
               (JSON..=) "PropertyId" Prelude.<$> propertyId,
               (JSON..=) "PropertyValue" Prelude.<$> propertyValue]))
instance Property "AssetId" IotSiteWiseProperty where
  type PropertyType "AssetId" IotSiteWiseProperty = Value Prelude.Text
  set newValue IotSiteWiseProperty {..}
    = IotSiteWiseProperty {assetId = Prelude.pure newValue, ..}
instance Property "EntryId" IotSiteWiseProperty where
  type PropertyType "EntryId" IotSiteWiseProperty = Value Prelude.Text
  set newValue IotSiteWiseProperty {..}
    = IotSiteWiseProperty {entryId = Prelude.pure newValue, ..}
instance Property "PropertyAlias" IotSiteWiseProperty where
  type PropertyType "PropertyAlias" IotSiteWiseProperty = Value Prelude.Text
  set newValue IotSiteWiseProperty {..}
    = IotSiteWiseProperty {propertyAlias = Prelude.pure newValue, ..}
instance Property "PropertyId" IotSiteWiseProperty where
  type PropertyType "PropertyId" IotSiteWiseProperty = Value Prelude.Text
  set newValue IotSiteWiseProperty {..}
    = IotSiteWiseProperty {propertyId = Prelude.pure newValue, ..}
instance Property "PropertyValue" IotSiteWiseProperty where
  type PropertyType "PropertyValue" IotSiteWiseProperty = AssetPropertyValueProperty
  set newValue IotSiteWiseProperty {..}
    = IotSiteWiseProperty {propertyValue = Prelude.pure newValue, ..}