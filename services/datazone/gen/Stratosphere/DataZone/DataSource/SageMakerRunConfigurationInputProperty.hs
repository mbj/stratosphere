module Stratosphere.DataZone.DataSource.SageMakerRunConfigurationInputProperty (
        SageMakerRunConfigurationInputProperty(..),
        mkSageMakerRunConfigurationInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
data SageMakerRunConfigurationInputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-datasource-sagemakerrunconfigurationinput.html>
    SageMakerRunConfigurationInputProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-datasource-sagemakerrunconfigurationinput.html#cfn-datazone-datasource-sagemakerrunconfigurationinput-trackingassets>
                                            trackingAssets :: JSON.Object}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSageMakerRunConfigurationInputProperty ::
  JSON.Object -> SageMakerRunConfigurationInputProperty
mkSageMakerRunConfigurationInputProperty trackingAssets
  = SageMakerRunConfigurationInputProperty
      {haddock_workaround_ = (), trackingAssets = trackingAssets}
instance ToResourceProperties SageMakerRunConfigurationInputProperty where
  toResourceProperties SageMakerRunConfigurationInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::DataSource.SageMakerRunConfigurationInput",
         supportsTags = Prelude.False,
         properties = ["TrackingAssets" JSON..= trackingAssets]}
instance JSON.ToJSON SageMakerRunConfigurationInputProperty where
  toJSON SageMakerRunConfigurationInputProperty {..}
    = JSON.object ["TrackingAssets" JSON..= trackingAssets]
instance Property "TrackingAssets" SageMakerRunConfigurationInputProperty where
  type PropertyType "TrackingAssets" SageMakerRunConfigurationInputProperty = JSON.Object
  set newValue SageMakerRunConfigurationInputProperty {..}
    = SageMakerRunConfigurationInputProperty
        {trackingAssets = newValue, ..}