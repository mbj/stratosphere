module Stratosphere.AppMesh.GatewayRoute.HttpGatewayRoutePathRewriteProperty (
        HttpGatewayRoutePathRewriteProperty(..),
        mkHttpGatewayRoutePathRewriteProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HttpGatewayRoutePathRewriteProperty
  = HttpGatewayRoutePathRewriteProperty {exact :: (Prelude.Maybe (Value Prelude.Text))}
mkHttpGatewayRoutePathRewriteProperty ::
  HttpGatewayRoutePathRewriteProperty
mkHttpGatewayRoutePathRewriteProperty
  = HttpGatewayRoutePathRewriteProperty {exact = Prelude.Nothing}
instance ToResourceProperties HttpGatewayRoutePathRewriteProperty where
  toResourceProperties HttpGatewayRoutePathRewriteProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::GatewayRoute.HttpGatewayRoutePathRewrite",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Exact" Prelude.<$> exact])}
instance JSON.ToJSON HttpGatewayRoutePathRewriteProperty where
  toJSON HttpGatewayRoutePathRewriteProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Exact" Prelude.<$> exact]))
instance Property "Exact" HttpGatewayRoutePathRewriteProperty where
  type PropertyType "Exact" HttpGatewayRoutePathRewriteProperty = Value Prelude.Text
  set newValue HttpGatewayRoutePathRewriteProperty {}
    = HttpGatewayRoutePathRewriteProperty
        {exact = Prelude.pure newValue, ..}