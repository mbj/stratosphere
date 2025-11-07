module Stratosphere.Bedrock.DataSource.EnrichmentStrategyConfigurationProperty (
        EnrichmentStrategyConfigurationProperty(..),
        mkEnrichmentStrategyConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EnrichmentStrategyConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-enrichmentstrategyconfiguration.html>
    EnrichmentStrategyConfigurationProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-enrichmentstrategyconfiguration.html#cfn-bedrock-datasource-enrichmentstrategyconfiguration-method>
                                             method :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEnrichmentStrategyConfigurationProperty ::
  Value Prelude.Text -> EnrichmentStrategyConfigurationProperty
mkEnrichmentStrategyConfigurationProperty method
  = EnrichmentStrategyConfigurationProperty
      {haddock_workaround_ = (), method = method}
instance ToResourceProperties EnrichmentStrategyConfigurationProperty where
  toResourceProperties EnrichmentStrategyConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataSource.EnrichmentStrategyConfiguration",
         supportsTags = Prelude.False,
         properties = ["Method" JSON..= method]}
instance JSON.ToJSON EnrichmentStrategyConfigurationProperty where
  toJSON EnrichmentStrategyConfigurationProperty {..}
    = JSON.object ["Method" JSON..= method]
instance Property "Method" EnrichmentStrategyConfigurationProperty where
  type PropertyType "Method" EnrichmentStrategyConfigurationProperty = Value Prelude.Text
  set newValue EnrichmentStrategyConfigurationProperty {..}
    = EnrichmentStrategyConfigurationProperty {method = newValue, ..}