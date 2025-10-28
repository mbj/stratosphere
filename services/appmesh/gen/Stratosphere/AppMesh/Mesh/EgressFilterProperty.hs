module Stratosphere.AppMesh.Mesh.EgressFilterProperty (
        EgressFilterProperty(..), mkEgressFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EgressFilterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-mesh-egressfilter.html>
    EgressFilterProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-mesh-egressfilter.html#cfn-appmesh-mesh-egressfilter-type>
                          type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEgressFilterProperty ::
  Value Prelude.Text -> EgressFilterProperty
mkEgressFilterProperty type'
  = EgressFilterProperty {haddock_workaround_ = (), type' = type'}
instance ToResourceProperties EgressFilterProperty where
  toResourceProperties EgressFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::Mesh.EgressFilter",
         supportsTags = Prelude.False, properties = ["Type" JSON..= type']}
instance JSON.ToJSON EgressFilterProperty where
  toJSON EgressFilterProperty {..}
    = JSON.object ["Type" JSON..= type']
instance Property "Type" EgressFilterProperty where
  type PropertyType "Type" EgressFilterProperty = Value Prelude.Text
  set newValue EgressFilterProperty {..}
    = EgressFilterProperty {type' = newValue, ..}