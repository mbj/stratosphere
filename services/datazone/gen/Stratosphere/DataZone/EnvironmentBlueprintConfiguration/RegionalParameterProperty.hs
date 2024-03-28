module Stratosphere.DataZone.EnvironmentBlueprintConfiguration.RegionalParameterProperty (
        RegionalParameterProperty(..), mkRegionalParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RegionalParameterProperty
  = RegionalParameterProperty {parameters :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                               region :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRegionalParameterProperty :: RegionalParameterProperty
mkRegionalParameterProperty
  = RegionalParameterProperty
      {parameters = Prelude.Nothing, region = Prelude.Nothing}
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