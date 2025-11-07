module Stratosphere.AppIntegrations.Application.IframeConfigProperty (
        IframeConfigProperty(..), mkIframeConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IframeConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appintegrations-application-iframeconfig.html>
    IframeConfigProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appintegrations-application-iframeconfig.html#cfn-appintegrations-application-iframeconfig-allow>
                          allow :: (Prelude.Maybe (ValueList Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appintegrations-application-iframeconfig.html#cfn-appintegrations-application-iframeconfig-sandbox>
                          sandbox :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIframeConfigProperty :: IframeConfigProperty
mkIframeConfigProperty
  = IframeConfigProperty
      {haddock_workaround_ = (), allow = Prelude.Nothing,
       sandbox = Prelude.Nothing}
instance ToResourceProperties IframeConfigProperty where
  toResourceProperties IframeConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppIntegrations::Application.IframeConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Allow" Prelude.<$> allow,
                            (JSON..=) "Sandbox" Prelude.<$> sandbox])}
instance JSON.ToJSON IframeConfigProperty where
  toJSON IframeConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Allow" Prelude.<$> allow,
               (JSON..=) "Sandbox" Prelude.<$> sandbox]))
instance Property "Allow" IframeConfigProperty where
  type PropertyType "Allow" IframeConfigProperty = ValueList Prelude.Text
  set newValue IframeConfigProperty {..}
    = IframeConfigProperty {allow = Prelude.pure newValue, ..}
instance Property "Sandbox" IframeConfigProperty where
  type PropertyType "Sandbox" IframeConfigProperty = ValueList Prelude.Text
  set newValue IframeConfigProperty {..}
    = IframeConfigProperty {sandbox = Prelude.pure newValue, ..}