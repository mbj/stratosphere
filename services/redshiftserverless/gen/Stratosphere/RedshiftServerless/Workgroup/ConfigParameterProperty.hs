module Stratosphere.RedshiftServerless.Workgroup.ConfigParameterProperty (
        ConfigParameterProperty(..), mkConfigParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConfigParameterProperty
  = ConfigParameterProperty {parameterKey :: (Prelude.Maybe (Value Prelude.Text)),
                             parameterValue :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConfigParameterProperty :: ConfigParameterProperty
mkConfigParameterProperty
  = ConfigParameterProperty
      {parameterKey = Prelude.Nothing, parameterValue = Prelude.Nothing}
instance ToResourceProperties ConfigParameterProperty where
  toResourceProperties ConfigParameterProperty {..}
    = ResourceProperties
        {awsType = "AWS::RedshiftServerless::Workgroup.ConfigParameter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ParameterKey" Prelude.<$> parameterKey,
                            (JSON..=) "ParameterValue" Prelude.<$> parameterValue])}
instance JSON.ToJSON ConfigParameterProperty where
  toJSON ConfigParameterProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ParameterKey" Prelude.<$> parameterKey,
               (JSON..=) "ParameterValue" Prelude.<$> parameterValue]))
instance Property "ParameterKey" ConfigParameterProperty where
  type PropertyType "ParameterKey" ConfigParameterProperty = Value Prelude.Text
  set newValue ConfigParameterProperty {..}
    = ConfigParameterProperty
        {parameterKey = Prelude.pure newValue, ..}
instance Property "ParameterValue" ConfigParameterProperty where
  type PropertyType "ParameterValue" ConfigParameterProperty = Value Prelude.Text
  set newValue ConfigParameterProperty {..}
    = ConfigParameterProperty
        {parameterValue = Prelude.pure newValue, ..}