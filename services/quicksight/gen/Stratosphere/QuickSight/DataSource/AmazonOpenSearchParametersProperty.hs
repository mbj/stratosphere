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
  = AmazonOpenSearchParametersProperty {domain :: (Value Prelude.Text)}
mkAmazonOpenSearchParametersProperty ::
  Value Prelude.Text -> AmazonOpenSearchParametersProperty
mkAmazonOpenSearchParametersProperty domain
  = AmazonOpenSearchParametersProperty {domain = domain}
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
  set newValue AmazonOpenSearchParametersProperty {}
    = AmazonOpenSearchParametersProperty {domain = newValue, ..}