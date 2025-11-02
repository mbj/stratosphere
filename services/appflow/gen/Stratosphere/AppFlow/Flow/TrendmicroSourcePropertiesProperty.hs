module Stratosphere.AppFlow.Flow.TrendmicroSourcePropertiesProperty (
        TrendmicroSourcePropertiesProperty(..),
        mkTrendmicroSourcePropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TrendmicroSourcePropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-trendmicrosourceproperties.html>
    TrendmicroSourcePropertiesProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-trendmicrosourceproperties.html#cfn-appflow-flow-trendmicrosourceproperties-object>
                                        object :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTrendmicroSourcePropertiesProperty ::
  Value Prelude.Text -> TrendmicroSourcePropertiesProperty
mkTrendmicroSourcePropertiesProperty object
  = TrendmicroSourcePropertiesProperty
      {haddock_workaround_ = (), object = object}
instance ToResourceProperties TrendmicroSourcePropertiesProperty where
  toResourceProperties TrendmicroSourcePropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow.TrendmicroSourceProperties",
         supportsTags = Prelude.False,
         properties = ["Object" JSON..= object]}
instance JSON.ToJSON TrendmicroSourcePropertiesProperty where
  toJSON TrendmicroSourcePropertiesProperty {..}
    = JSON.object ["Object" JSON..= object]
instance Property "Object" TrendmicroSourcePropertiesProperty where
  type PropertyType "Object" TrendmicroSourcePropertiesProperty = Value Prelude.Text
  set newValue TrendmicroSourcePropertiesProperty {..}
    = TrendmicroSourcePropertiesProperty {object = newValue, ..}