module Stratosphere.QBusiness.WebExperience.BrowserExtensionConfigurationProperty (
        BrowserExtensionConfigurationProperty(..),
        mkBrowserExtensionConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BrowserExtensionConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-webexperience-browserextensionconfiguration.html>
    BrowserExtensionConfigurationProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-webexperience-browserextensionconfiguration.html#cfn-qbusiness-webexperience-browserextensionconfiguration-enabledbrowserextensions>
                                           enabledBrowserExtensions :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBrowserExtensionConfigurationProperty ::
  ValueList Prelude.Text -> BrowserExtensionConfigurationProperty
mkBrowserExtensionConfigurationProperty enabledBrowserExtensions
  = BrowserExtensionConfigurationProperty
      {haddock_workaround_ = (),
       enabledBrowserExtensions = enabledBrowserExtensions}
instance ToResourceProperties BrowserExtensionConfigurationProperty where
  toResourceProperties BrowserExtensionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QBusiness::WebExperience.BrowserExtensionConfiguration",
         supportsTags = Prelude.False,
         properties = ["EnabledBrowserExtensions"
                         JSON..= enabledBrowserExtensions]}
instance JSON.ToJSON BrowserExtensionConfigurationProperty where
  toJSON BrowserExtensionConfigurationProperty {..}
    = JSON.object
        ["EnabledBrowserExtensions" JSON..= enabledBrowserExtensions]
instance Property "EnabledBrowserExtensions" BrowserExtensionConfigurationProperty where
  type PropertyType "EnabledBrowserExtensions" BrowserExtensionConfigurationProperty = ValueList Prelude.Text
  set newValue BrowserExtensionConfigurationProperty {..}
    = BrowserExtensionConfigurationProperty
        {enabledBrowserExtensions = newValue, ..}