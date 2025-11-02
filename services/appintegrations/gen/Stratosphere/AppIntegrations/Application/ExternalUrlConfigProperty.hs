module Stratosphere.AppIntegrations.Application.ExternalUrlConfigProperty (
        ExternalUrlConfigProperty(..), mkExternalUrlConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ExternalUrlConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appintegrations-application-externalurlconfig.html>
    ExternalUrlConfigProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appintegrations-application-externalurlconfig.html#cfn-appintegrations-application-externalurlconfig-accessurl>
                               accessUrl :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appintegrations-application-externalurlconfig.html#cfn-appintegrations-application-externalurlconfig-approvedorigins>
                               approvedOrigins :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExternalUrlConfigProperty ::
  Value Prelude.Text -> ExternalUrlConfigProperty
mkExternalUrlConfigProperty accessUrl
  = ExternalUrlConfigProperty
      {haddock_workaround_ = (), accessUrl = accessUrl,
       approvedOrigins = Prelude.Nothing}
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