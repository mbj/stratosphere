module Stratosphere.ApiGatewayV2.RoutingRule.MatchHeadersProperty (
        module Exports, MatchHeadersProperty(..), mkMatchHeadersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApiGatewayV2.RoutingRule.MatchHeaderValueProperty as Exports
import Stratosphere.ResourceProperties
data MatchHeadersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-routingrule-matchheaders.html>
    MatchHeadersProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-routingrule-matchheaders.html#cfn-apigatewayv2-routingrule-matchheaders-anyof>
                          anyOf :: [MatchHeaderValueProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMatchHeadersProperty ::
  [MatchHeaderValueProperty] -> MatchHeadersProperty
mkMatchHeadersProperty anyOf
  = MatchHeadersProperty {haddock_workaround_ = (), anyOf = anyOf}
instance ToResourceProperties MatchHeadersProperty where
  toResourceProperties MatchHeadersProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApiGatewayV2::RoutingRule.MatchHeaders",
         supportsTags = Prelude.False, properties = ["AnyOf" JSON..= anyOf]}
instance JSON.ToJSON MatchHeadersProperty where
  toJSON MatchHeadersProperty {..}
    = JSON.object ["AnyOf" JSON..= anyOf]
instance Property "AnyOf" MatchHeadersProperty where
  type PropertyType "AnyOf" MatchHeadersProperty = [MatchHeaderValueProperty]
  set newValue MatchHeadersProperty {..}
    = MatchHeadersProperty {anyOf = newValue, ..}