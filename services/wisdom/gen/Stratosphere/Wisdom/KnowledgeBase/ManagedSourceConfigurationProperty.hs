module Stratosphere.Wisdom.KnowledgeBase.ManagedSourceConfigurationProperty (
        module Exports, ManagedSourceConfigurationProperty(..),
        mkManagedSourceConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Wisdom.KnowledgeBase.WebCrawlerConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data ManagedSourceConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-knowledgebase-managedsourceconfiguration.html>
    ManagedSourceConfigurationProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-knowledgebase-managedsourceconfiguration.html#cfn-wisdom-knowledgebase-managedsourceconfiguration-webcrawlerconfiguration>
                                        webCrawlerConfiguration :: WebCrawlerConfigurationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkManagedSourceConfigurationProperty ::
  WebCrawlerConfigurationProperty
  -> ManagedSourceConfigurationProperty
mkManagedSourceConfigurationProperty webCrawlerConfiguration
  = ManagedSourceConfigurationProperty
      {haddock_workaround_ = (),
       webCrawlerConfiguration = webCrawlerConfiguration}
instance ToResourceProperties ManagedSourceConfigurationProperty where
  toResourceProperties ManagedSourceConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::KnowledgeBase.ManagedSourceConfiguration",
         supportsTags = Prelude.False,
         properties = ["WebCrawlerConfiguration"
                         JSON..= webCrawlerConfiguration]}
instance JSON.ToJSON ManagedSourceConfigurationProperty where
  toJSON ManagedSourceConfigurationProperty {..}
    = JSON.object
        ["WebCrawlerConfiguration" JSON..= webCrawlerConfiguration]
instance Property "WebCrawlerConfiguration" ManagedSourceConfigurationProperty where
  type PropertyType "WebCrawlerConfiguration" ManagedSourceConfigurationProperty = WebCrawlerConfigurationProperty
  set newValue ManagedSourceConfigurationProperty {..}
    = ManagedSourceConfigurationProperty
        {webCrawlerConfiguration = newValue, ..}