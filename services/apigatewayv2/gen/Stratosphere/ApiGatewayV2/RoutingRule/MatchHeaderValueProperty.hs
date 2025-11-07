module Stratosphere.ApiGatewayV2.RoutingRule.MatchHeaderValueProperty (
        MatchHeaderValueProperty(..), mkMatchHeaderValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MatchHeaderValueProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-routingrule-matchheadervalue.html>
    MatchHeaderValueProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-routingrule-matchheadervalue.html#cfn-apigatewayv2-routingrule-matchheadervalue-header>
                              header :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-routingrule-matchheadervalue.html#cfn-apigatewayv2-routingrule-matchheadervalue-valueglob>
                              valueGlob :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMatchHeaderValueProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> MatchHeaderValueProperty
mkMatchHeaderValueProperty header valueGlob
  = MatchHeaderValueProperty
      {haddock_workaround_ = (), header = header, valueGlob = valueGlob}
instance ToResourceProperties MatchHeaderValueProperty where
  toResourceProperties MatchHeaderValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApiGatewayV2::RoutingRule.MatchHeaderValue",
         supportsTags = Prelude.False,
         properties = ["Header" JSON..= header,
                       "ValueGlob" JSON..= valueGlob]}
instance JSON.ToJSON MatchHeaderValueProperty where
  toJSON MatchHeaderValueProperty {..}
    = JSON.object
        ["Header" JSON..= header, "ValueGlob" JSON..= valueGlob]
instance Property "Header" MatchHeaderValueProperty where
  type PropertyType "Header" MatchHeaderValueProperty = Value Prelude.Text
  set newValue MatchHeaderValueProperty {..}
    = MatchHeaderValueProperty {header = newValue, ..}
instance Property "ValueGlob" MatchHeaderValueProperty where
  type PropertyType "ValueGlob" MatchHeaderValueProperty = Value Prelude.Text
  set newValue MatchHeaderValueProperty {..}
    = MatchHeaderValueProperty {valueGlob = newValue, ..}