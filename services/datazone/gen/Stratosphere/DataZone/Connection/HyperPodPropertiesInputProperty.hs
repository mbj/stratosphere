module Stratosphere.DataZone.Connection.HyperPodPropertiesInputProperty (
        HyperPodPropertiesInputProperty(..),
        mkHyperPodPropertiesInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HyperPodPropertiesInputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-hyperpodpropertiesinput.html>
    HyperPodPropertiesInputProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-hyperpodpropertiesinput.html#cfn-datazone-connection-hyperpodpropertiesinput-clustername>
                                     clusterName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHyperPodPropertiesInputProperty ::
  Value Prelude.Text -> HyperPodPropertiesInputProperty
mkHyperPodPropertiesInputProperty clusterName
  = HyperPodPropertiesInputProperty
      {haddock_workaround_ = (), clusterName = clusterName}
instance ToResourceProperties HyperPodPropertiesInputProperty where
  toResourceProperties HyperPodPropertiesInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::Connection.HyperPodPropertiesInput",
         supportsTags = Prelude.False,
         properties = ["ClusterName" JSON..= clusterName]}
instance JSON.ToJSON HyperPodPropertiesInputProperty where
  toJSON HyperPodPropertiesInputProperty {..}
    = JSON.object ["ClusterName" JSON..= clusterName]
instance Property "ClusterName" HyperPodPropertiesInputProperty where
  type PropertyType "ClusterName" HyperPodPropertiesInputProperty = Value Prelude.Text
  set newValue HyperPodPropertiesInputProperty {..}
    = HyperPodPropertiesInputProperty {clusterName = newValue, ..}