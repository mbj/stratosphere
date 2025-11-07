module Stratosphere.ApiGatewayV2.RoutingRule.MatchBasePathsProperty (
        MatchBasePathsProperty(..), mkMatchBasePathsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MatchBasePathsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-routingrule-matchbasepaths.html>
    MatchBasePathsProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-routingrule-matchbasepaths.html#cfn-apigatewayv2-routingrule-matchbasepaths-anyof>
                            anyOf :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMatchBasePathsProperty ::
  ValueList Prelude.Text -> MatchBasePathsProperty
mkMatchBasePathsProperty anyOf
  = MatchBasePathsProperty {haddock_workaround_ = (), anyOf = anyOf}
instance ToResourceProperties MatchBasePathsProperty where
  toResourceProperties MatchBasePathsProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApiGatewayV2::RoutingRule.MatchBasePaths",
         supportsTags = Prelude.False, properties = ["AnyOf" JSON..= anyOf]}
instance JSON.ToJSON MatchBasePathsProperty where
  toJSON MatchBasePathsProperty {..}
    = JSON.object ["AnyOf" JSON..= anyOf]
instance Property "AnyOf" MatchBasePathsProperty where
  type PropertyType "AnyOf" MatchBasePathsProperty = ValueList Prelude.Text
  set newValue MatchBasePathsProperty {..}
    = MatchBasePathsProperty {anyOf = newValue, ..}