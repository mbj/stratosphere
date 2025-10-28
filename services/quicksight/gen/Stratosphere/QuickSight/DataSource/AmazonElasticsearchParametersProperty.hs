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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-amazonelasticsearchparameters.html>
    AmazonElasticsearchParametersProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-amazonelasticsearchparameters.html#cfn-quicksight-datasource-amazonelasticsearchparameters-domain>
                                           domain :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAmazonElasticsearchParametersProperty ::
  Value Prelude.Text -> AmazonElasticsearchParametersProperty
mkAmazonElasticsearchParametersProperty domain
  = AmazonElasticsearchParametersProperty
      {haddock_workaround_ = (), domain = domain}
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
  set newValue AmazonElasticsearchParametersProperty {..}
    = AmazonElasticsearchParametersProperty {domain = newValue, ..}