module Stratosphere.EKS.Addon.NamespaceConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data NamespaceConfigProperty :: Prelude.Type
instance ToResourceProperties NamespaceConfigProperty
instance Prelude.Eq NamespaceConfigProperty
instance Prelude.Show NamespaceConfigProperty
instance JSON.ToJSON NamespaceConfigProperty