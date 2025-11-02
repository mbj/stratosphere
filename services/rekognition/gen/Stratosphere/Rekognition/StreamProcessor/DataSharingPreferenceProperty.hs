module Stratosphere.Rekognition.StreamProcessor.DataSharingPreferenceProperty (
        DataSharingPreferenceProperty(..), mkDataSharingPreferenceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataSharingPreferenceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rekognition-streamprocessor-datasharingpreference.html>
    DataSharingPreferenceProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rekognition-streamprocessor-datasharingpreference.html#cfn-rekognition-streamprocessor-datasharingpreference-optin>
                                   optIn :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataSharingPreferenceProperty ::
  Value Prelude.Bool -> DataSharingPreferenceProperty
mkDataSharingPreferenceProperty optIn
  = DataSharingPreferenceProperty
      {haddock_workaround_ = (), optIn = optIn}
instance ToResourceProperties DataSharingPreferenceProperty where
  toResourceProperties DataSharingPreferenceProperty {..}
    = ResourceProperties
        {awsType = "AWS::Rekognition::StreamProcessor.DataSharingPreference",
         supportsTags = Prelude.False, properties = ["OptIn" JSON..= optIn]}
instance JSON.ToJSON DataSharingPreferenceProperty where
  toJSON DataSharingPreferenceProperty {..}
    = JSON.object ["OptIn" JSON..= optIn]
instance Property "OptIn" DataSharingPreferenceProperty where
  type PropertyType "OptIn" DataSharingPreferenceProperty = Value Prelude.Bool
  set newValue DataSharingPreferenceProperty {..}
    = DataSharingPreferenceProperty {optIn = newValue, ..}