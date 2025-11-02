module Stratosphere.IoTAnalytics.Dataset.DeltaTimeSessionWindowConfigurationProperty (
        DeltaTimeSessionWindowConfigurationProperty(..),
        mkDeltaTimeSessionWindowConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeltaTimeSessionWindowConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-deltatimesessionwindowconfiguration.html>
    DeltaTimeSessionWindowConfigurationProperty {haddock_workaround_ :: (),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-deltatimesessionwindowconfiguration.html#cfn-iotanalytics-dataset-deltatimesessionwindowconfiguration-timeoutinminutes>
                                                 timeoutInMinutes :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeltaTimeSessionWindowConfigurationProperty ::
  Value Prelude.Integer
  -> DeltaTimeSessionWindowConfigurationProperty
mkDeltaTimeSessionWindowConfigurationProperty timeoutInMinutes
  = DeltaTimeSessionWindowConfigurationProperty
      {haddock_workaround_ = (), timeoutInMinutes = timeoutInMinutes}
instance ToResourceProperties DeltaTimeSessionWindowConfigurationProperty where
  toResourceProperties
    DeltaTimeSessionWindowConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTAnalytics::Dataset.DeltaTimeSessionWindowConfiguration",
         supportsTags = Prelude.False,
         properties = ["TimeoutInMinutes" JSON..= timeoutInMinutes]}
instance JSON.ToJSON DeltaTimeSessionWindowConfigurationProperty where
  toJSON DeltaTimeSessionWindowConfigurationProperty {..}
    = JSON.object ["TimeoutInMinutes" JSON..= timeoutInMinutes]
instance Property "TimeoutInMinutes" DeltaTimeSessionWindowConfigurationProperty where
  type PropertyType "TimeoutInMinutes" DeltaTimeSessionWindowConfigurationProperty = Value Prelude.Integer
  set newValue DeltaTimeSessionWindowConfigurationProperty {..}
    = DeltaTimeSessionWindowConfigurationProperty
        {timeoutInMinutes = newValue, ..}