module Stratosphere.RedshiftServerless.Namespace.NamespaceProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data NamespaceProperty :: Prelude.Type
instance ToResourceProperties NamespaceProperty
instance JSON.ToJSON NamespaceProperty