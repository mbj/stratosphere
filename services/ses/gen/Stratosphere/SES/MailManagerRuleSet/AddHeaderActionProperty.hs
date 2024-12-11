module Stratosphere.SES.MailManagerRuleSet.AddHeaderActionProperty (
        AddHeaderActionProperty(..), mkAddHeaderActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AddHeaderActionProperty
  = AddHeaderActionProperty {headerName :: (Value Prelude.Text),
                             headerValue :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAddHeaderActionProperty ::
  Value Prelude.Text -> Value Prelude.Text -> AddHeaderActionProperty
mkAddHeaderActionProperty headerName headerValue
  = AddHeaderActionProperty
      {headerName = headerName, headerValue = headerValue}
instance ToResourceProperties AddHeaderActionProperty where
  toResourceProperties AddHeaderActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::MailManagerRuleSet.AddHeaderAction",
         supportsTags = Prelude.False,
         properties = ["HeaderName" JSON..= headerName,
                       "HeaderValue" JSON..= headerValue]}
instance JSON.ToJSON AddHeaderActionProperty where
  toJSON AddHeaderActionProperty {..}
    = JSON.object
        ["HeaderName" JSON..= headerName,
         "HeaderValue" JSON..= headerValue]
instance Property "HeaderName" AddHeaderActionProperty where
  type PropertyType "HeaderName" AddHeaderActionProperty = Value Prelude.Text
  set newValue AddHeaderActionProperty {..}
    = AddHeaderActionProperty {headerName = newValue, ..}
instance Property "HeaderValue" AddHeaderActionProperty where
  type PropertyType "HeaderValue" AddHeaderActionProperty = Value Prelude.Text
  set newValue AddHeaderActionProperty {..}
    = AddHeaderActionProperty {headerValue = newValue, ..}