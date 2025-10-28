module Stratosphere.Bedrock.DataSource.WebSourceConfigurationProperty (
        module Exports, WebSourceConfigurationProperty(..),
        mkWebSourceConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.DataSource.UrlConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data WebSourceConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-websourceconfiguration.html>
    WebSourceConfigurationProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-websourceconfiguration.html#cfn-bedrock-datasource-websourceconfiguration-urlconfiguration>
                                    urlConfiguration :: UrlConfigurationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWebSourceConfigurationProperty ::
  UrlConfigurationProperty -> WebSourceConfigurationProperty
mkWebSourceConfigurationProperty urlConfiguration
  = WebSourceConfigurationProperty
      {haddock_workaround_ = (), urlConfiguration = urlConfiguration}
instance ToResourceProperties WebSourceConfigurationProperty where
  toResourceProperties WebSourceConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataSource.WebSourceConfiguration",
         supportsTags = Prelude.False,
         properties = ["UrlConfiguration" JSON..= urlConfiguration]}
instance JSON.ToJSON WebSourceConfigurationProperty where
  toJSON WebSourceConfigurationProperty {..}
    = JSON.object ["UrlConfiguration" JSON..= urlConfiguration]
instance Property "UrlConfiguration" WebSourceConfigurationProperty where
  type PropertyType "UrlConfiguration" WebSourceConfigurationProperty = UrlConfigurationProperty
  set newValue WebSourceConfigurationProperty {..}
    = WebSourceConfigurationProperty {urlConfiguration = newValue, ..}