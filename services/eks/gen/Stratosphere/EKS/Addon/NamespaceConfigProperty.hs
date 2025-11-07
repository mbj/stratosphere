module Stratosphere.EKS.Addon.NamespaceConfigProperty (
        NamespaceConfigProperty(..), mkNamespaceConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NamespaceConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-addon-namespaceconfig.html>
    NamespaceConfigProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-addon-namespaceconfig.html#cfn-eks-addon-namespaceconfig-namespace>
                             namespace :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNamespaceConfigProperty ::
  Value Prelude.Text -> NamespaceConfigProperty
mkNamespaceConfigProperty namespace
  = NamespaceConfigProperty
      {haddock_workaround_ = (), namespace = namespace}
instance ToResourceProperties NamespaceConfigProperty where
  toResourceProperties NamespaceConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::EKS::Addon.NamespaceConfig",
         supportsTags = Prelude.False,
         properties = ["Namespace" JSON..= namespace]}
instance JSON.ToJSON NamespaceConfigProperty where
  toJSON NamespaceConfigProperty {..}
    = JSON.object ["Namespace" JSON..= namespace]
instance Property "Namespace" NamespaceConfigProperty where
  type PropertyType "Namespace" NamespaceConfigProperty = Value Prelude.Text
  set newValue NamespaceConfigProperty {..}
    = NamespaceConfigProperty {namespace = newValue, ..}