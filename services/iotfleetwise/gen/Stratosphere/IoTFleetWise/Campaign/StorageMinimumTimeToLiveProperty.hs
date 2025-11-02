module Stratosphere.IoTFleetWise.Campaign.StorageMinimumTimeToLiveProperty (
        StorageMinimumTimeToLiveProperty(..),
        mkStorageMinimumTimeToLiveProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StorageMinimumTimeToLiveProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-campaign-storageminimumtimetolive.html>
    StorageMinimumTimeToLiveProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-campaign-storageminimumtimetolive.html#cfn-iotfleetwise-campaign-storageminimumtimetolive-unit>
                                      unit :: (Value Prelude.Text),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-campaign-storageminimumtimetolive.html#cfn-iotfleetwise-campaign-storageminimumtimetolive-value>
                                      value :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStorageMinimumTimeToLiveProperty ::
  Value Prelude.Text
  -> Value Prelude.Integer -> StorageMinimumTimeToLiveProperty
mkStorageMinimumTimeToLiveProperty unit value
  = StorageMinimumTimeToLiveProperty
      {haddock_workaround_ = (), unit = unit, value = value}
instance ToResourceProperties StorageMinimumTimeToLiveProperty where
  toResourceProperties StorageMinimumTimeToLiveProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTFleetWise::Campaign.StorageMinimumTimeToLive",
         supportsTags = Prelude.False,
         properties = ["Unit" JSON..= unit, "Value" JSON..= value]}
instance JSON.ToJSON StorageMinimumTimeToLiveProperty where
  toJSON StorageMinimumTimeToLiveProperty {..}
    = JSON.object ["Unit" JSON..= unit, "Value" JSON..= value]
instance Property "Unit" StorageMinimumTimeToLiveProperty where
  type PropertyType "Unit" StorageMinimumTimeToLiveProperty = Value Prelude.Text
  set newValue StorageMinimumTimeToLiveProperty {..}
    = StorageMinimumTimeToLiveProperty {unit = newValue, ..}
instance Property "Value" StorageMinimumTimeToLiveProperty where
  type PropertyType "Value" StorageMinimumTimeToLiveProperty = Value Prelude.Integer
  set newValue StorageMinimumTimeToLiveProperty {..}
    = StorageMinimumTimeToLiveProperty {value = newValue, ..}