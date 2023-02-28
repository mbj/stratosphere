module Stratosphere.QuickSight.DataSource.AmazonElasticsearchParametersProperty (
        AmazonElasticsearchParametersProperty(..),
        mkAmazonElasticsearchParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AmazonElasticsearchParametersProperty
  = AmazonElasticsearchParametersProperty {domain :: (Value Prelude.Text)}
mkAmazonElasticsearchParametersProperty ::
  Value Prelude.Text -> AmazonElasticsearchParametersProperty
mkAmazonElasticsearchParametersProperty domain
  = AmazonElasticsearchParametersProperty {domain = domain}
instance ToResourceProperties AmazonElasticsearchParametersProperty where
  toResourceProperties AmazonElasticsearchParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSource.AmazonElasticsearchParameters",
         supportsTags = Prelude.False,
         properties = ["Domain" JSON..= domain]}
instance JSON.ToJSON AmazonElasticsearchParametersProperty where
  toJSON AmazonElasticsearchParametersProperty {..}
    = JSON.object ["Domain" JSON..= domain]
instance Property "Domain" AmazonElasticsearchParametersProperty where
  type PropertyType "Domain" AmazonElasticsearchParametersProperty = Value Prelude.Text
  set newValue AmazonElasticsearchParametersProperty {}
    = AmazonElasticsearchParametersProperty {domain = newValue, ..}