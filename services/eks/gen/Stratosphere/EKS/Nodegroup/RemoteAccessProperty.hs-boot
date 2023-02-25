module Stratosphere.EKS.Nodegroup.RemoteAccessProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RemoteAccessProperty :: Prelude.Type
instance ToResourceProperties RemoteAccessProperty
instance JSON.ToJSON RemoteAccessProperty