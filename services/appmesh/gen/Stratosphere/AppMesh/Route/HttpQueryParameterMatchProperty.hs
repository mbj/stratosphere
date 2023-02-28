module Stratosphere.AppMesh.Route.HttpQueryParameterMatchProperty (
        HttpQueryParameterMatchProperty(..),
        mkHttpQueryParameterMatchProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HttpQueryParameterMatchProperty
  = HttpQueryParameterMatchProperty {exact :: (Prelude.Maybe (Value Prelude.Text))}
mkHttpQueryParameterMatchProperty ::
  HttpQueryParameterMatchProperty
mkHttpQueryParameterMatchProperty
  = HttpQueryParameterMatchProperty {exact = Prelude.Nothing}
instance ToResourceProperties HttpQueryParameterMatchProperty where
  toResourceProperties HttpQueryParameterMatchProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::Route.HttpQueryParameterMatch",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Exact" Prelude.<$> exact])}
instance JSON.ToJSON HttpQueryParameterMatchProperty where
  toJSON HttpQueryParameterMatchProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Exact" Prelude.<$> exact]))
instance Property "Exact" HttpQueryParameterMatchProperty where
  type PropertyType "Exact" HttpQueryParameterMatchProperty = Value Prelude.Text
  set newValue HttpQueryParameterMatchProperty {}
    = HttpQueryParameterMatchProperty
        {exact = Prelude.pure newValue, ..}