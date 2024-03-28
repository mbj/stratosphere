module Stratosphere.AppIntegrations.Application.ExternalUrlConfigProperty (
        ExternalUrlConfigProperty(..), mkExternalUrlConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ExternalUrlConfigProperty
  = ExternalUrlConfigProperty {accessUrl :: (Value Prelude.Text),
                               approvedOrigins :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExternalUrlConfigProperty ::
  Value Prelude.Text
  -> ValueList Prelude.Text -> ExternalUrlConfigProperty
mkExternalUrlConfigProperty accessUrl approvedOrigins
  = ExternalUrlConfigProperty
      {accessUrl = accessUrl, approvedOrigins = approvedOrigins}
instance ToResourceProperties ExternalUrlConfigProperty where
  toResourceProperties ExternalUrlConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppIntegrations::Application.ExternalUrlConfig",
         supportsTags = Prelude.False,
         properties = ["AccessUrl" JSON..= accessUrl,
                       "ApprovedOrigins" JSON..= approvedOrigins]}
instance JSON.ToJSON ExternalUrlConfigProperty where
  toJSON ExternalUrlConfigProperty {..}
    = JSON.object
        ["AccessUrl" JSON..= accessUrl,
         "ApprovedOrigins" JSON..= approvedOrigins]
instance Property "AccessUrl" ExternalUrlConfigProperty where
  type PropertyType "AccessUrl" ExternalUrlConfigProperty = Value Prelude.Text
  set newValue ExternalUrlConfigProperty {..}
    = ExternalUrlConfigProperty {accessUrl = newValue, ..}
instance Property "ApprovedOrigins" ExternalUrlConfigProperty where
  type PropertyType "ApprovedOrigins" ExternalUrlConfigProperty = ValueList Prelude.Text
  set newValue ExternalUrlConfigProperty {..}
    = ExternalUrlConfigProperty {approvedOrigins = newValue, ..}