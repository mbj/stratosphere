module Stratosphere.AppMesh.Route.QueryParameterProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data QueryParameterProperty :: Prelude.Type
instance ToResourceProperties QueryParameterProperty
instance JSON.ToJSON QueryParameterProperty