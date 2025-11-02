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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-environmentactions-awsconsolelinkparameters.html>
    AwsConsoleLinkParametersProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-environmentactions-awsconsolelinkparameters.html#cfn-datazone-environmentactions-awsconsolelinkparameters-uri>
                                      uri :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAwsConsoleLinkParametersProperty ::
  AwsConsoleLinkParametersProperty
mkAwsConsoleLinkParametersProperty
  = AwsConsoleLinkParametersProperty
      {haddock_workaround_ = (), uri = Prelude.Nothing}
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
  set newValue AwsConsoleLinkParametersProperty {..}
    = AwsConsoleLinkParametersProperty
        {uri = Prelude.pure newValue, ..}