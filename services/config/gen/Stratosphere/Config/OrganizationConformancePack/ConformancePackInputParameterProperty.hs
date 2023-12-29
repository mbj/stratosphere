module Stratosphere.Config.OrganizationConformancePack.ConformancePackInputParameterProperty (
        ConformancePackInputParameterProperty(..),
        mkConformancePackInputParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConformancePackInputParameterProperty
  = ConformancePackInputParameterProperty {parameterName :: (Value Prelude.Text),
                                           parameterValue :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConformancePackInputParameterProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ConformancePackInputParameterProperty
mkConformancePackInputParameterProperty
  parameterName
  parameterValue
  = ConformancePackInputParameterProperty
      {parameterName = parameterName, parameterValue = parameterValue}
instance ToResourceProperties ConformancePackInputParameterProperty where
  toResourceProperties ConformancePackInputParameterProperty {..}
    = ResourceProperties
        {awsType = "AWS::Config::OrganizationConformancePack.ConformancePackInputParameter",
         supportsTags = Prelude.False,
         properties = ["ParameterName" JSON..= parameterName,
                       "ParameterValue" JSON..= parameterValue]}
instance JSON.ToJSON ConformancePackInputParameterProperty where
  toJSON ConformancePackInputParameterProperty {..}
    = JSON.object
        ["ParameterName" JSON..= parameterName,
         "ParameterValue" JSON..= parameterValue]
instance Property "ParameterName" ConformancePackInputParameterProperty where
  type PropertyType "ParameterName" ConformancePackInputParameterProperty = Value Prelude.Text
  set newValue ConformancePackInputParameterProperty {..}
    = ConformancePackInputParameterProperty
        {parameterName = newValue, ..}
instance Property "ParameterValue" ConformancePackInputParameterProperty where
  type PropertyType "ParameterValue" ConformancePackInputParameterProperty = Value Prelude.Text
  set newValue ConformancePackInputParameterProperty {..}
    = ConformancePackInputParameterProperty
        {parameterValue = newValue, ..}