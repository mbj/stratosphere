module Stratosphere.DataZone.EnvironmentBlueprintConfiguration.RegionalParameterProperty (
        RegionalParameterProperty(..), mkRegionalParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RegionalParameterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-environmentblueprintconfiguration-regionalparameter.html>
    RegionalParameterProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-environmentblueprintconfiguration-regionalparameter.html#cfn-datazone-environmentblueprintconfiguration-regionalparameter-parameters>
                               parameters :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-environmentblueprintconfiguration-regionalparameter.html#cfn-datazone-environmentblueprintconfiguration-regionalparameter-region>
                               region :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRegionalParameterProperty :: RegionalParameterProperty
mkRegionalParameterProperty
  = RegionalParameterProperty
      {haddock_workaround_ = (), parameters = Prelude.Nothing,
       region = Prelude.Nothing}
instance ToResourceProperties RegionalParameterProperty where
  toResourceProperties RegionalParameterProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::EnvironmentBlueprintConfiguration.RegionalParameter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Parameters" Prelude.<$> parameters,
                            (JSON..=) "Region" Prelude.<$> region])}
instance JSON.ToJSON RegionalParameterProperty where
  toJSON RegionalParameterProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Parameters" Prelude.<$> parameters,
               (JSON..=) "Region" Prelude.<$> region]))
instance Property "Parameters" RegionalParameterProperty where
  type PropertyType "Parameters" RegionalParameterProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue RegionalParameterProperty {..}
    = RegionalParameterProperty
        {parameters = Prelude.pure newValue, ..}
instance Property "Region" RegionalParameterProperty where
  type PropertyType "Region" RegionalParameterProperty = Value Prelude.Text
  set newValue RegionalParameterProperty {..}
    = RegionalParameterProperty {region = Prelude.pure newValue, ..}