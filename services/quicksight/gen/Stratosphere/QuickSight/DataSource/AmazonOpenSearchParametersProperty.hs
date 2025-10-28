module Stratosphere.QuickSight.DataSource.AmazonOpenSearchParametersProperty (
        AmazonOpenSearchParametersProperty(..),
        mkAmazonOpenSearchParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AmazonOpenSearchParametersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-amazonopensearchparameters.html>
    AmazonOpenSearchParametersProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-amazonopensearchparameters.html#cfn-quicksight-datasource-amazonopensearchparameters-domain>
                                        domain :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAmazonOpenSearchParametersProperty ::
  Value Prelude.Text -> AmazonOpenSearchParametersProperty
mkAmazonOpenSearchParametersProperty domain
  = AmazonOpenSearchParametersProperty
      {haddock_workaround_ = (), domain = domain}
instance ToResourceProperties AmazonOpenSearchParametersProperty where
  toResourceProperties AmazonOpenSearchParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSource.AmazonOpenSearchParameters",
         supportsTags = Prelude.False,
         properties = ["Domain" JSON..= domain]}
instance JSON.ToJSON AmazonOpenSearchParametersProperty where
  toJSON AmazonOpenSearchParametersProperty {..}
    = JSON.object ["Domain" JSON..= domain]
instance Property "Domain" AmazonOpenSearchParametersProperty where
  type PropertyType "Domain" AmazonOpenSearchParametersProperty = Value Prelude.Text
  set newValue AmazonOpenSearchParametersProperty {..}
    = AmazonOpenSearchParametersProperty {domain = newValue, ..}