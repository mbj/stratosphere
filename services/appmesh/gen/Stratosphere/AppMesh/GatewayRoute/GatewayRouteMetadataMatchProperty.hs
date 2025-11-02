module Stratosphere.AppMesh.GatewayRoute.GatewayRouteMetadataMatchProperty (
        module Exports, GatewayRouteMetadataMatchProperty(..),
        mkGatewayRouteMetadataMatchProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.GatewayRoute.GatewayRouteRangeMatchProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GatewayRouteMetadataMatchProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-gatewayroutemetadatamatch.html>
    GatewayRouteMetadataMatchProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-gatewayroutemetadatamatch.html#cfn-appmesh-gatewayroute-gatewayroutemetadatamatch-exact>
                                       exact :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-gatewayroutemetadatamatch.html#cfn-appmesh-gatewayroute-gatewayroutemetadatamatch-prefix>
                                       prefix :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-gatewayroutemetadatamatch.html#cfn-appmesh-gatewayroute-gatewayroutemetadatamatch-range>
                                       range :: (Prelude.Maybe GatewayRouteRangeMatchProperty),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-gatewayroutemetadatamatch.html#cfn-appmesh-gatewayroute-gatewayroutemetadatamatch-regex>
                                       regex :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-gatewayroutemetadatamatch.html#cfn-appmesh-gatewayroute-gatewayroutemetadatamatch-suffix>
                                       suffix :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGatewayRouteMetadataMatchProperty ::
  GatewayRouteMetadataMatchProperty
mkGatewayRouteMetadataMatchProperty
  = GatewayRouteMetadataMatchProperty
      {haddock_workaround_ = (), exact = Prelude.Nothing,
       prefix = Prelude.Nothing, range = Prelude.Nothing,
       regex = Prelude.Nothing, suffix = Prelude.Nothing}
instance ToResourceProperties GatewayRouteMetadataMatchProperty where
  toResourceProperties GatewayRouteMetadataMatchProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::GatewayRoute.GatewayRouteMetadataMatch",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Exact" Prelude.<$> exact,
                            (JSON..=) "Prefix" Prelude.<$> prefix,
                            (JSON..=) "Range" Prelude.<$> range,
                            (JSON..=) "Regex" Prelude.<$> regex,
                            (JSON..=) "Suffix" Prelude.<$> suffix])}
instance JSON.ToJSON GatewayRouteMetadataMatchProperty where
  toJSON GatewayRouteMetadataMatchProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Exact" Prelude.<$> exact,
               (JSON..=) "Prefix" Prelude.<$> prefix,
               (JSON..=) "Range" Prelude.<$> range,
               (JSON..=) "Regex" Prelude.<$> regex,
               (JSON..=) "Suffix" Prelude.<$> suffix]))
instance Property "Exact" GatewayRouteMetadataMatchProperty where
  type PropertyType "Exact" GatewayRouteMetadataMatchProperty = Value Prelude.Text
  set newValue GatewayRouteMetadataMatchProperty {..}
    = GatewayRouteMetadataMatchProperty
        {exact = Prelude.pure newValue, ..}
instance Property "Prefix" GatewayRouteMetadataMatchProperty where
  type PropertyType "Prefix" GatewayRouteMetadataMatchProperty = Value Prelude.Text
  set newValue GatewayRouteMetadataMatchProperty {..}
    = GatewayRouteMetadataMatchProperty
        {prefix = Prelude.pure newValue, ..}
instance Property "Range" GatewayRouteMetadataMatchProperty where
  type PropertyType "Range" GatewayRouteMetadataMatchProperty = GatewayRouteRangeMatchProperty
  set newValue GatewayRouteMetadataMatchProperty {..}
    = GatewayRouteMetadataMatchProperty
        {range = Prelude.pure newValue, ..}
instance Property "Regex" GatewayRouteMetadataMatchProperty where
  type PropertyType "Regex" GatewayRouteMetadataMatchProperty = Value Prelude.Text
  set newValue GatewayRouteMetadataMatchProperty {..}
    = GatewayRouteMetadataMatchProperty
        {regex = Prelude.pure newValue, ..}
instance Property "Suffix" GatewayRouteMetadataMatchProperty where
  type PropertyType "Suffix" GatewayRouteMetadataMatchProperty = Value Prelude.Text
  set newValue GatewayRouteMetadataMatchProperty {..}
    = GatewayRouteMetadataMatchProperty
        {suffix = Prelude.pure newValue, ..}