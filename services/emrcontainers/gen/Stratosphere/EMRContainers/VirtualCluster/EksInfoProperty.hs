module Stratosphere.EMRContainers.VirtualCluster.EksInfoProperty (
        EksInfoProperty(..), mkEksInfoProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EksInfoProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emrcontainers-virtualcluster-eksinfo.html>
    EksInfoProperty {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emrcontainers-virtualcluster-eksinfo.html#cfn-emrcontainers-virtualcluster-eksinfo-namespace>
                     namespace :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEksInfoProperty :: Value Prelude.Text -> EksInfoProperty
mkEksInfoProperty namespace
  = EksInfoProperty {haddock_workaround_ = (), namespace = namespace}
instance ToResourceProperties EksInfoProperty where
  toResourceProperties EksInfoProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMRContainers::VirtualCluster.EksInfo",
         supportsTags = Prelude.False,
         properties = ["Namespace" JSON..= namespace]}
instance JSON.ToJSON EksInfoProperty where
  toJSON EksInfoProperty {..}
    = JSON.object ["Namespace" JSON..= namespace]
instance Property "Namespace" EksInfoProperty where
  type PropertyType "Namespace" EksInfoProperty = Value Prelude.Text
  set newValue EksInfoProperty {..}
    = EksInfoProperty {namespace = newValue, ..}