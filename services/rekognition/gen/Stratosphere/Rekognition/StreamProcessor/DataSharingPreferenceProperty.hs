module Stratosphere.Rekognition.StreamProcessor.DataSharingPreferenceProperty (
        DataSharingPreferenceProperty(..), mkDataSharingPreferenceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataSharingPreferenceProperty
  = DataSharingPreferenceProperty {optIn :: (Value Prelude.Bool)}
mkDataSharingPreferenceProperty ::
  Value Prelude.Bool -> DataSharingPreferenceProperty
mkDataSharingPreferenceProperty optIn
  = DataSharingPreferenceProperty {optIn = optIn}
instance ToResourceProperties DataSharingPreferenceProperty where
  toResourceProperties DataSharingPreferenceProperty {..}
    = ResourceProperties
        {awsType = "AWS::Rekognition::StreamProcessor.DataSharingPreference",
         properties = ["OptIn" JSON..= optIn]}
instance JSON.ToJSON DataSharingPreferenceProperty where
  toJSON DataSharingPreferenceProperty {..}
    = JSON.object ["OptIn" JSON..= optIn]
instance Property "OptIn" DataSharingPreferenceProperty where
  type PropertyType "OptIn" DataSharingPreferenceProperty = Value Prelude.Bool
  set newValue DataSharingPreferenceProperty {}
    = DataSharingPreferenceProperty {optIn = newValue, ..}