module Stratosphere.DataZone.EnvironmentProfile.EnvironmentParameterProperty (
        EnvironmentParameterProperty(..), mkEnvironmentParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EnvironmentParameterProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-environmentprofile-environmentparameter.html>
    EnvironmentParameterProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-environmentprofile-environmentparameter.html#cfn-datazone-environmentprofile-environmentparameter-name>
                                  name :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-environmentprofile-environmentparameter.html#cfn-datazone-environmentprofile-environmentparameter-value>
                                  value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEnvironmentParameterProperty :: EnvironmentParameterProperty
mkEnvironmentParameterProperty
  = EnvironmentParameterProperty
      {name = Prelude.Nothing, value = Prelude.Nothing}
instance ToResourceProperties EnvironmentParameterProperty where
  toResourceProperties EnvironmentParameterProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::EnvironmentProfile.EnvironmentParameter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON EnvironmentParameterProperty where
  toJSON EnvironmentParameterProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Name" EnvironmentParameterProperty where
  type PropertyType "Name" EnvironmentParameterProperty = Value Prelude.Text
  set newValue EnvironmentParameterProperty {..}
    = EnvironmentParameterProperty {name = Prelude.pure newValue, ..}
instance Property "Value" EnvironmentParameterProperty where
  type PropertyType "Value" EnvironmentParameterProperty = Value Prelude.Text
  set newValue EnvironmentParameterProperty {..}
    = EnvironmentParameterProperty {value = Prelude.pure newValue, ..}