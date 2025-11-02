module Stratosphere.IoTFleetWise.Campaign.StorageMaximumSizeProperty (
        StorageMaximumSizeProperty(..), mkStorageMaximumSizeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StorageMaximumSizeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-campaign-storagemaximumsize.html>
    StorageMaximumSizeProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-campaign-storagemaximumsize.html#cfn-iotfleetwise-campaign-storagemaximumsize-unit>
                                unit :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-campaign-storagemaximumsize.html#cfn-iotfleetwise-campaign-storagemaximumsize-value>
                                value :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStorageMaximumSizeProperty ::
  Value Prelude.Text
  -> Value Prelude.Integer -> StorageMaximumSizeProperty
mkStorageMaximumSizeProperty unit value
  = StorageMaximumSizeProperty
      {haddock_workaround_ = (), unit = unit, value = value}
instance ToResourceProperties StorageMaximumSizeProperty where
  toResourceProperties StorageMaximumSizeProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTFleetWise::Campaign.StorageMaximumSize",
         supportsTags = Prelude.False,
         properties = ["Unit" JSON..= unit, "Value" JSON..= value]}
instance JSON.ToJSON StorageMaximumSizeProperty where
  toJSON StorageMaximumSizeProperty {..}
    = JSON.object ["Unit" JSON..= unit, "Value" JSON..= value]
instance Property "Unit" StorageMaximumSizeProperty where
  type PropertyType "Unit" StorageMaximumSizeProperty = Value Prelude.Text
  set newValue StorageMaximumSizeProperty {..}
    = StorageMaximumSizeProperty {unit = newValue, ..}
instance Property "Value" StorageMaximumSizeProperty where
  type PropertyType "Value" StorageMaximumSizeProperty = Value Prelude.Integer
  set newValue StorageMaximumSizeProperty {..}
    = StorageMaximumSizeProperty {value = newValue, ..}