module Stratosphere.AppMesh.GatewayRoute.HttpGatewayRoutePrefixRewriteProperty (
        HttpGatewayRoutePrefixRewriteProperty(..),
        mkHttpGatewayRoutePrefixRewriteProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HttpGatewayRoutePrefixRewriteProperty
  = HttpGatewayRoutePrefixRewriteProperty {defaultPrefix :: (Prelude.Maybe (Value Prelude.Text)),
                                           value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHttpGatewayRoutePrefixRewriteProperty ::
  HttpGatewayRoutePrefixRewriteProperty
mkHttpGatewayRoutePrefixRewriteProperty
  = HttpGatewayRoutePrefixRewriteProperty
      {defaultPrefix = Prelude.Nothing, value = Prelude.Nothing}
instance ToResourceProperties HttpGatewayRoutePrefixRewriteProperty where
  toResourceProperties HttpGatewayRoutePrefixRewriteProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::GatewayRoute.HttpGatewayRoutePrefixRewrite",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DefaultPrefix" Prelude.<$> defaultPrefix,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON HttpGatewayRoutePrefixRewriteProperty where
  toJSON HttpGatewayRoutePrefixRewriteProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DefaultPrefix" Prelude.<$> defaultPrefix,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "DefaultPrefix" HttpGatewayRoutePrefixRewriteProperty where
  type PropertyType "DefaultPrefix" HttpGatewayRoutePrefixRewriteProperty = Value Prelude.Text
  set newValue HttpGatewayRoutePrefixRewriteProperty {..}
    = HttpGatewayRoutePrefixRewriteProperty
        {defaultPrefix = Prelude.pure newValue, ..}
instance Property "Value" HttpGatewayRoutePrefixRewriteProperty where
  type PropertyType "Value" HttpGatewayRoutePrefixRewriteProperty = Value Prelude.Text
  set newValue HttpGatewayRoutePrefixRewriteProperty {..}
    = HttpGatewayRoutePrefixRewriteProperty
        {value = Prelude.pure newValue, ..}