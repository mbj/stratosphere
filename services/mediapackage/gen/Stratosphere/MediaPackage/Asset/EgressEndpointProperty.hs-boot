module Stratosphere.MediaPackage.Asset.EgressEndpointProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EgressEndpointProperty :: Prelude.Type
instance ToResourceProperties EgressEndpointProperty
instance JSON.ToJSON EgressEndpointProperty