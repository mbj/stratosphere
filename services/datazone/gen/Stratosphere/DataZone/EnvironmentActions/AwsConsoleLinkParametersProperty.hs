module Stratosphere.DataZone.EnvironmentActions.AwsConsoleLinkParametersProperty (
        AwsConsoleLinkParametersProperty(..),
        mkAwsConsoleLinkParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AwsConsoleLinkParametersProperty
  = AwsConsoleLinkParametersProperty {uri :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAwsConsoleLinkParametersProperty ::
  AwsConsoleLinkParametersProperty
mkAwsConsoleLinkParametersProperty
  = AwsConsoleLinkParametersProperty {uri = Prelude.Nothing}
instance ToResourceProperties AwsConsoleLinkParametersProperty where
  toResourceProperties AwsConsoleLinkParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::EnvironmentActions.AwsConsoleLinkParameters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Uri" Prelude.<$> uri])}
instance JSON.ToJSON AwsConsoleLinkParametersProperty where
  toJSON AwsConsoleLinkParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Uri" Prelude.<$> uri]))
instance Property "Uri" AwsConsoleLinkParametersProperty where
  type PropertyType "Uri" AwsConsoleLinkParametersProperty = Value Prelude.Text
  set newValue AwsConsoleLinkParametersProperty {}
    = AwsConsoleLinkParametersProperty
        {uri = Prelude.pure newValue, ..}