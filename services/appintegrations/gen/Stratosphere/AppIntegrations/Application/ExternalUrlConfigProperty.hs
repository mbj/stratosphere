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
                               approvedOrigins :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExternalUrlConfigProperty ::
  Value Prelude.Text -> ExternalUrlConfigProperty
mkExternalUrlConfigProperty accessUrl
  = ExternalUrlConfigProperty
      {accessUrl = accessUrl, approvedOrigins = Prelude.Nothing}
instance ToResourceProperties ExternalUrlConfigProperty where
  toResourceProperties ExternalUrlConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppIntegrations::Application.ExternalUrlConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AccessUrl" JSON..= accessUrl]
                           (Prelude.catMaybes
                              [(JSON..=) "ApprovedOrigins" Prelude.<$> approvedOrigins]))}
instance JSON.ToJSON ExternalUrlConfigProperty where
  toJSON ExternalUrlConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AccessUrl" JSON..= accessUrl]
              (Prelude.catMaybes
                 [(JSON..=) "ApprovedOrigins" Prelude.<$> approvedOrigins])))
instance Property "AccessUrl" ExternalUrlConfigProperty where
  type PropertyType "AccessUrl" ExternalUrlConfigProperty = Value Prelude.Text
  set newValue ExternalUrlConfigProperty {..}
    = ExternalUrlConfigProperty {accessUrl = newValue, ..}
instance Property "ApprovedOrigins" ExternalUrlConfigProperty where
  type PropertyType "ApprovedOrigins" ExternalUrlConfigProperty = ValueList Prelude.Text
  set newValue ExternalUrlConfigProperty {..}
    = ExternalUrlConfigProperty
        {approvedOrigins = Prelude.pure newValue, ..}