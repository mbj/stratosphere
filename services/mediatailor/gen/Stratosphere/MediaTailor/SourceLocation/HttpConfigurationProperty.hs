module Stratosphere.MediaTailor.SourceLocation.HttpConfigurationProperty (
        HttpConfigurationProperty(..), mkHttpConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HttpConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-sourcelocation-httpconfiguration.html>
    HttpConfigurationProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-sourcelocation-httpconfiguration.html#cfn-mediatailor-sourcelocation-httpconfiguration-baseurl>
                               baseUrl :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHttpConfigurationProperty ::
  Value Prelude.Text -> HttpConfigurationProperty
mkHttpConfigurationProperty baseUrl
  = HttpConfigurationProperty
      {haddock_workaround_ = (), baseUrl = baseUrl}
instance ToResourceProperties HttpConfigurationProperty where
  toResourceProperties HttpConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaTailor::SourceLocation.HttpConfiguration",
         supportsTags = Prelude.False,
         properties = ["BaseUrl" JSON..= baseUrl]}
instance JSON.ToJSON HttpConfigurationProperty where
  toJSON HttpConfigurationProperty {..}
    = JSON.object ["BaseUrl" JSON..= baseUrl]
instance Property "BaseUrl" HttpConfigurationProperty where
  type PropertyType "BaseUrl" HttpConfigurationProperty = Value Prelude.Text
  set newValue HttpConfigurationProperty {..}
    = HttpConfigurationProperty {baseUrl = newValue, ..}