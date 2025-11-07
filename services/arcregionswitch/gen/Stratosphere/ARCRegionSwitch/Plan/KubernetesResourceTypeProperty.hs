module Stratosphere.ARCRegionSwitch.Plan.KubernetesResourceTypeProperty (
        KubernetesResourceTypeProperty(..),
        mkKubernetesResourceTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KubernetesResourceTypeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-kubernetesresourcetype.html>
    KubernetesResourceTypeProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-kubernetesresourcetype.html#cfn-arcregionswitch-plan-kubernetesresourcetype-apiversion>
                                    apiVersion :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-kubernetesresourcetype.html#cfn-arcregionswitch-plan-kubernetesresourcetype-kind>
                                    kind :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKubernetesResourceTypeProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> KubernetesResourceTypeProperty
mkKubernetesResourceTypeProperty apiVersion kind
  = KubernetesResourceTypeProperty
      {haddock_workaround_ = (), apiVersion = apiVersion, kind = kind}
instance ToResourceProperties KubernetesResourceTypeProperty where
  toResourceProperties KubernetesResourceTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::ARCRegionSwitch::Plan.KubernetesResourceType",
         supportsTags = Prelude.False,
         properties = ["ApiVersion" JSON..= apiVersion,
                       "Kind" JSON..= kind]}
instance JSON.ToJSON KubernetesResourceTypeProperty where
  toJSON KubernetesResourceTypeProperty {..}
    = JSON.object
        ["ApiVersion" JSON..= apiVersion, "Kind" JSON..= kind]
instance Property "ApiVersion" KubernetesResourceTypeProperty where
  type PropertyType "ApiVersion" KubernetesResourceTypeProperty = Value Prelude.Text
  set newValue KubernetesResourceTypeProperty {..}
    = KubernetesResourceTypeProperty {apiVersion = newValue, ..}
instance Property "Kind" KubernetesResourceTypeProperty where
  type PropertyType "Kind" KubernetesResourceTypeProperty = Value Prelude.Text
  set newValue KubernetesResourceTypeProperty {..}
    = KubernetesResourceTypeProperty {kind = newValue, ..}