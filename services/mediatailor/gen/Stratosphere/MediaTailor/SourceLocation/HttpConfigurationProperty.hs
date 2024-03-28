module Stratosphere.MediaTailor.SourceLocation.HttpConfigurationProperty (
        HttpConfigurationProperty(..), mkHttpConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HttpConfigurationProperty
  = HttpConfigurationProperty {baseUrl :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHttpConfigurationProperty ::
  Value Prelude.Text -> HttpConfigurationProperty
mkHttpConfigurationProperty baseUrl
  = HttpConfigurationProperty {baseUrl = baseUrl}
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
  set newValue HttpConfigurationProperty {}
    = HttpConfigurationProperty {baseUrl = newValue, ..}