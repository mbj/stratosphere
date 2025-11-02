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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httpqueryparametermatch.html>
    HttpQueryParameterMatchProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httpqueryparametermatch.html#cfn-appmesh-route-httpqueryparametermatch-exact>
                                     exact :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHttpQueryParameterMatchProperty ::
  HttpQueryParameterMatchProperty
mkHttpQueryParameterMatchProperty
  = HttpQueryParameterMatchProperty
      {haddock_workaround_ = (), exact = Prelude.Nothing}
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
  set newValue HttpQueryParameterMatchProperty {..}
    = HttpQueryParameterMatchProperty
        {exact = Prelude.pure newValue, ..}